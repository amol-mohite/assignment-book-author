class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  def blank_stars
    5 - rating.to_i
  end

end
