class CreateEngines < ActiveRecord::Migration[7.0]
  def change
    create_table :engines do |t|
      t.integer :runable_id
      t.string :runable_type

      t.timestamps
    end
  end
end
