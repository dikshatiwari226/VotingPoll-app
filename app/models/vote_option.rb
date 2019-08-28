class VoteOption < ApplicationRecord
  belongs_to :vote_poll
  has_many :answers, dependent: :destroy

  validates :title, presence: true
end
