class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :employee_name, :text
    add_column :users, :employee_name_kana, :text
    add_column :users, :employee_requested_day_off, :date
  end
end
