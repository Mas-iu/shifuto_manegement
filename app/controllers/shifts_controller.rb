class ShiftsController < ApplicationController
    def index
    end
    def add
    end    
    def new
        @shifts = Shift.new
    end
          
    def create 
        @shifts = PossibilityAttendance.new(shift_params)
        @shifts.user_id = current_user.id
        if @shifts.save
            redirect_to shifts_path
        else
            render :new
        end
    end 
          
    def shift_params
        params.permit(:employee_work_time_start, :employee_work_time_end)
    end
    def usersmanager
    end
    def usersmanageradd
    end
    def usersmanagermkshift
    end
    def complete
    end
    def mypage
        @shifts = PossibilityAttendance.select(:employee_work_time_start, :employee_work_time_end).where(user_id: current_user.id)
        
    end
    
        
end
