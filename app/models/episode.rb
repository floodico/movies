class Episode < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_attached_file :video
  validates_attachment_content_type :video, :content_type => ['video/mp4']

  belongs_to :season
  has_many :reviews
end
