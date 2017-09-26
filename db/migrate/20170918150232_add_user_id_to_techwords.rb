class AddUserIdToTechwords < ActiveRecord::Migration
  def change
    add_column :techwords, :user_id, :integer
  end
end
