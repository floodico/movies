class Serial < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true, uniqueness: true
  has_attached_file :picture
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  has_many :episodes
  has_many :reviews, as: :reviewable
end
