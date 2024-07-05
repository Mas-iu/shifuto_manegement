class AddApprovedToDecisionAttendances < ActiveRecord::Migration[6.1]
  
  def change
    add_column :decision_attendances, :approved, :boolean, default: false
  end
  
end
