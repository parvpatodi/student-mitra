class AddNicknameToTechwords < ActiveRecord::Migration
  def change
    add_column :techwords, :nickname, :string
  end
end
