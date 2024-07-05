class DecisionAttendance < ApplicationRecord
  belongs_to :user

  def requested?
    employee_requested_day_off
  end

  scope :unapproved_requests, -> { where(employee_requested_day_off: 1, employee_decision_day_off: nil) }

end
