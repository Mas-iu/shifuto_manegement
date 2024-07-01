class Manager < ApplicationRecord
    @shifts = PossibilityAttendance
    @shifts = Shift.all

end
