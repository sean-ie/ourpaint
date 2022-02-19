class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :paint, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
