class CreateNovals < ActiveRecord::Migration[7.0]
  def change
    create_table :novals do |t|
      t.integer :writeable_id
      t.string :writeable_type

      t.timestamps
    end
  end
end
