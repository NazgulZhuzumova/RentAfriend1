class AddBioToFriends < ActiveRecord::Migration[6.1]
  def change
    add_column :friends, :bio, :text
  end
end
