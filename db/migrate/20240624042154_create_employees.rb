class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.integer :employees
      t.text :employees_name
      t.text :employee_name_kana
      t.date :employee_requested_day_off
      t.integer :pass_id
      t.text :pass_word
      
      t.timestamps
    end
  end
end
