class ArticleNote < ActiveRecord::Base
  validates :question,:answer, presence: true

  belongs_to :article
end
