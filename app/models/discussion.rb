class Discussion < ApplicationRecord
  belongs_to :user
  belongs_to :channel
  has-many :replies , dependent: :destroy

  validates :title, :content, presence: true
end
