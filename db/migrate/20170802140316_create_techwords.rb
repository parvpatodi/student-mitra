class CreateTechwords < ActiveRecord::Migration
  def change
    create_table :techwords do |t|
      t.string :name
      t.text :definition

      t.timestamps null: false
    end
  end
end
