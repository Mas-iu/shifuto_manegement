class ShiftsController < ApplicationController
    def index
        @show_special_link = (current_user.id == 3)
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
            redirect_to complete_shifts_path
        else
            render :new
        end
        
    end 

    def complete
        @show_special_link2 = (current_user.id == 3)
    end
          
    def shift_params
        params.permit(:employee_work_time_start, :employee_work_time_end)
    end
    
    def usersmanager
    end
    
    def usersmanageradd
        @user = User.new(user_params)
        if @user.save
            redirect_to complete_shifts_path
        end
    end

    def user_params
        params.permit(:employee_name, :employee_name_kana, :email, :user_id )
    end
    
    def usersmanagermkshift
        @shifts = PossibilityAttendance.all
        @shifts_by_user = PossibilityAttendance
        .select(:user_id, :employee_work_time_start, :employee_work_time_end)
        .order(:user_id, :employee_work_time_start)
        .group_by(&:employee_work_time_start)
        
        @show_special_link3 = (current_user.id == 3)
        
    end

    def save_shifts
        @user_id = params[:user_id]
        @shifts = PossibilityAttendance.where(user_id: @user_id)


        @shifts.each do |shift|
            DecisionAttendance.create(
                user_id: @user_id,
                employee_work_time_start: shift.employee_work_time_start,
                employee_work_time_end: shift.employee_work_time_end
            )
        end

        redirect_to complete_shifts_path
    end

    def mypage
        @shifts = PossibilityAttendance.select(:employee_work_time_start, :employee_work_time_end).where(user_id: current_user.id)
    end
    
        
end
