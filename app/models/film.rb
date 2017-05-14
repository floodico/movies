class Film < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true, uniqueness: true
  has_attached_file :picture
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  has_attached_file :video
  validates_attachment_content_type :video, :content_type => ['video/mp4']

  has_many :reviews
end
