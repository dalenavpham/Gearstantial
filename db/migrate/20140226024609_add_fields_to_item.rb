class AddFieldsToItem < ActiveRecord::Migration
  def change
    add_column :items, :notes, :string
  end
end
