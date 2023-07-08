class AddDepartmentIdToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :employees, :departments
  end
end
