class Shift < ApplicationRecord
    validates :employee_work_time_start, presence: true
    validates :employee_work_time_end, presence: true
    validate :start_time_before_end_time
      
    private
      
    def start_time_before_end_time
        if employee_work_time_start >= employee_work_time_end
            errors.add(:employee_work_time_start, "must be before the end time")
        end
    end
    
      
end
