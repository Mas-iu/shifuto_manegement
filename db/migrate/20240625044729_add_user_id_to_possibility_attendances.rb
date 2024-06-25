class AddUserIdToPossibilityAttendances < ActiveRecord::Migration[6.1]
  def change
    add_reference :possibility_attendances, :user, null: false, foreign_key: true
  end
end
