class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :employee_name, :text
  end
end
