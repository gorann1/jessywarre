class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :center, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :price
      t.integer :total

      t.timestamps
    end
  end
end
