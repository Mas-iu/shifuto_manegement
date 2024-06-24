class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :employee_id, :integer
    add_column :users, :employee_name, :text
    add_column :users, :employee_name_kana, :text
  end
end
