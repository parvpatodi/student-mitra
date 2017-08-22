class Article < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true,
                    length: { minimum: 3 }
  validates :description, presence: true
  belongs_to :category
  has_many :article_notes
  has_many :comments,as: :commentable
end
