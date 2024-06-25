class RenameEmployeeIdColumnToDecisionAttendances < ActiveRecord::Migration[6.1]
  def change
    remove_column :decision_attendances, :employee_id
  end
end
