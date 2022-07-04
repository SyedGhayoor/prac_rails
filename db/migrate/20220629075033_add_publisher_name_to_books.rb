class AddPublisherNameToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :publisher_name, :string
  end
end
