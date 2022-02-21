class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.references :user
      t.integer :age
      t.string :name
      t.string :interest
      t.string :location
      t.string :gender
      t.integer :price

      t.timestamps
    end
  end
end
