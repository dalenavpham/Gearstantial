class RemoveFieldsFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :category, :string
    remove_column :items, :location, :string
  end
end
