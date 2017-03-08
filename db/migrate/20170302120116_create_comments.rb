class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do | t |
      t.integer  :trip_id, :guest_id, null: false
      t.text       :text, null: false

      t.timestamps(null: false)
    end
  end
end
