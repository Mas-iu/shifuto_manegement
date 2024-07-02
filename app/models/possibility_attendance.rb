class PossibilityAttendance < ApplicationRecord
    belongs_to :user
    @shifts = PossibilityAttendance
    @shifts_by_user = PossibilityAttendance
   
end
