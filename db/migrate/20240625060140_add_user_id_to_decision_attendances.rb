class AddUserIdToDecisionAttendances < ActiveRecord::Migration[6.1]
  def change
    add_reference :decision_attendances, :user, null: false, foreign_key: true 
  end
end
