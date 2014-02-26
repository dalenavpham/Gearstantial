class CreateEmployee < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee, :name
      t.string :employee, :location
      t.string :employee, :status

      t.timestamps
    end
  end
end
