class AddColumnToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :employee_number, :integer
  end
end
