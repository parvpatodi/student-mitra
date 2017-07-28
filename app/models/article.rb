class Article < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true,
                    length: { minimum: 3 }
  validates :description, presence: true
end
