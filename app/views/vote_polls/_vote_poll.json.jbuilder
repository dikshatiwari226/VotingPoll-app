json.extract! vote_poll, :id, :title, :description, :startdate, :enddate, :created_at, :updated_at
json.url vote_poll_url(vote_poll, format: :json)
