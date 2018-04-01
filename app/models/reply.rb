class Reply < ApplicationRecord
  belongs_to :user
  belongs_to :discussion
  validates :reply, presence: true

  extend FriendlyId
  friendly_id :reply, use: [:slugged, :finders]

  def should_generate_new_friendly_id?
    reply_changed?
  end
end
