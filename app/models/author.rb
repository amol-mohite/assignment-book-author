class Author < ApplicationRecord
  has_and_belongs_to_many :books
 def name_with_initial
    "#{first_name.first}. #{last_name} "
  end
end
