class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do | t |
      t.integer  :trip_id, :guest_id, :cost, null: false

      t.timestamps(null: false)
    end
  end
end
