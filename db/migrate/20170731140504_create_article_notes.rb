class CreateArticleNotes < ActiveRecord::Migration
  def change
    create_table :article_notes do |t|
      t.text :question
      t.text :answer

      t.timestamps null: false
    end
  end
end
