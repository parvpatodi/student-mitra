class Category < ActiveRecord::Base
  validates :name,:description, presence: true, uniqueness: true
  has_many :articles
end
