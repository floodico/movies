class Season < ApplicationRecord
  validates :season_number, presence: true, uniqueness: true, :numericality => { greater_than_or_equal_to: 1 }

  belongs_to :serial
end
