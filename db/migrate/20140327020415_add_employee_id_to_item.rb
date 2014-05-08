class AddEmployeeIdToItem < ActiveRecord::Migration
  def changes
    add_reference :items, :employee
  end
end
