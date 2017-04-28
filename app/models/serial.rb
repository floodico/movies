class Serial < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  def to_param
    name.parameterize
  end

end
