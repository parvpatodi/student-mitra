class Category < ActiveRecord::Base
  validates :name,:description, presence: true, uniqueness: true
end
