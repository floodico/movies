class Review < ApplicationRecord
  validates :text, presence: true

  belongs_to :reviewable, polymorphic: true
end
