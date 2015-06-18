class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :response
      t.string :carpool
      t.text :note

      t.timestamps null: false
    end
  end
end
