class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.integer :airport_id
      t.boolean :walkable
      t.boolean :public_transport
      t.boolean :urban
      t.boolean :outdoor_adventurer
      t.string :code

      t.timestamps
    end
  end
end
