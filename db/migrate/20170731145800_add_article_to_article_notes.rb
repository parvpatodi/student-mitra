class AddArticleToArticleNotes < ActiveRecord::Migration
  def change
    add_column :article_notes, :article_id, :integer
  end
end
