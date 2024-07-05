class DecisionAttendance < ApplicationRecord
  belongs_to :user

  def requested?
    employee_requested_day_off
  end

end
