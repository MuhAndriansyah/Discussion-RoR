class Reply < ApplicationRecord
  belongs_to :user
  belongs_to :discussion
  validates :reply, presence: true
end
