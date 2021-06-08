class AddDepthToLocations < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :depth, :string
  end
end
