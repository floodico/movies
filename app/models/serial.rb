class Serial < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :seasons
end
