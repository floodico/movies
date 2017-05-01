class Episode < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :episode_number, presence: true, uniqueness: true, :numericality => { greater_than_or_equal_to: 1 }
  has_attached_file :video
  validates_attachment_content_type :video, :content_type => ['video/mp4']

  belongs_to :serial
  has_many :reviews
end
