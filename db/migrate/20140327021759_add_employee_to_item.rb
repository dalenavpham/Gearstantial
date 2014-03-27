class AddEmployeeToItem < ActiveRecord::Migration
  def change
    add_column :items, :employee_id, :integer
  end
end
