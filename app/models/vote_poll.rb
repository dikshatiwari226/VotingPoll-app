class VotePoll < ApplicationRecord
	has_many :vote_options, dependent: :destroy
	has_many :answers, dependent: :destroy
	belongs_to :category

	validates :title, :description, :startdate, :enddate, presence: true
 	accepts_nested_attributes_for :vote_options, :allow_destroy => true
end
