class VotePollsController < ApplicationController
  before_action :set_vote_poll, only: [:show, :edit, :update, :destroy]

  # GET /vote_polls
  # GET /vote_polls.json
  def index
    if params[:search].present?
      @vote_polls = VotePoll.where("lower(title) LIKE :prefix OR lower(title) LIKE :prefix", prefix: "%#{params[:search].downcase}%")
    elsif params[:category_id].present?
      @vote_polls = VotePoll.where(category_id: params[:category_id])
    else
      @vote_polls = VotePoll.all
    end  
    @category = Category.all
  end

  # GET /vote_polls/1
  # GET /vote_polls/1.json
  def show
  end

  # GET /vote_polls/new
  def new
    @vote_poll = VotePoll.new
  end

  # GET /vote_polls/1/edit
  def edit
  end

  # POST /vote_polls
  # POST /vote_polls.json
  def create
    @vote_poll = VotePoll.new(vote_poll_params)

    respond_to do |format|
      if @vote_poll.save
        format.js 
        # format.html { redirect_to @vote_poll, notice: 'Vote poll was successfully created.' }
        format.json { render :show, status: :created, location: @vote_poll }
      else
        format.html { render :new }
        format.json { render json: @vote_poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vote_polls/1
  # PATCH/PUT /vote_polls/1.json
  def update
    respond_to do |format|
      if @vote_poll.update(vote_poll_params)
        format.html { redirect_to define_admin_routes({resourceName: 'VotePoll', objectId: @vote_poll.id}), notice: 'PollVote was successfully updated.' }
        # format.html { redirect_to @vote_poll, notice: 'Vote poll was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote_poll }
      else
        format.html { render :edit }
        format.json { render json: @vote_poll.errors, status: :unprocessable_entity }
      end

    end
  end

  # DELETE /vote_polls/1
  # DELETE /vote_polls/1.json
  def destroy
    @vote_poll.destroy
    respond_to do |format|
      format.html { redirect_to define_admin_routes({resourceName: 'VotePoll'}), notice: 'PollVote was successfully deleted.' }
      # format.html { redirect_to vote_polls_url, notice: 'Vote poll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote_poll
      @vote_poll = VotePoll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_poll_params
      params.require(:vote_poll).permit(:title, :description, :startdate, :enddate, :category_id, vote_options_attributes: [:id, :title, :vote_poll_id, :_destroy])
    end
end


