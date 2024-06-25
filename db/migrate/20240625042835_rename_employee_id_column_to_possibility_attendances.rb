class RenameEmployeeIdColumnToPossibilityAttendances < ActiveRecord::Migration[6.1]
  def change
    remove_column :possibility_attendances, :employee_id  
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
