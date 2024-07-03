class AddColumnToDecisionAttendances < ActiveRecord::Migration[6.1]
  def change
    add_column :decision_attendances, :employee_requested_day_off, :integer
    add_column :decision_attendances, :employee_decision_day_off, :integer
  end
end
