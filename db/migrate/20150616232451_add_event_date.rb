class AddEventDate < ActiveRecord::Migration
  def change
    add_column :guests, :rsvpDate, :datetime
  end
end
