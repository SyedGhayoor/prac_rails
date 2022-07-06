class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.integer :v_id
      t.string :type
      t.string :name
      t.string :make
      t.integer :model
      t.integer :wheels

      t.timestamps
    end
  end
end
