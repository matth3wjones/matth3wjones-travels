class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do | t |
      t.string  :destination, :description, :details, null: false
      t.string  :guests
      t.integer  :host_id, null: false
      t.datetime  :arrive, :depart, null: false

      t.timestamps(null: false)
    end
  end
end
