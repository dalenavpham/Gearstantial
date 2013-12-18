class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :serial
      t.string :category
      t.integer :year
      t.datetime :purchase_date
      t.decimal :purchase_price, precision: 8, scale: 2
      t.timestamps
    end
  end
end
