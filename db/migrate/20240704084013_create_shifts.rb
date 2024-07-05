class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.datetime :employee_work_time_start
      t.datetime :employee_work_time_end
      t.boolean :requested, default: false

      t.timestamps
    end
  end
end
