class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :friend
      t.date :start_date
      t.date :end_date
      t.string :location
      t.boolean :approved, default: false

      t.timestamps
    end
  end
end
