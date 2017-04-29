class Season < ApplicationRecord
  extend FriendlyId
  friendly_id :season_number, use: :slugged

  validates :season_number, presence: true, uniqueness: true, :numericality => { greater_than_or_equal_to: 1 }

  belongs_to :serial
  has_many :episodes
end
