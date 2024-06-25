class CreatePossibilityAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :possibility_attendances do |t|
      t.integer :employee_id
      t.datetime :employee_work_time_start
      t.datetime :employee_work_time_end

      t.timestamps
    end
    add_index :possibility_attendances, :employee_work_time_start
    add_index :possibility_attendances, :employee_work_time_end
  end
  
end
