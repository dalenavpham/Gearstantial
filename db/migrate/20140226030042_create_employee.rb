class CreateEmployee < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :location
      t.string :status

      t.timestamps
    end
  end
end
