class ShiftsController < ApplicationController
    def index
        @decision_attendances = DecisionAttendance.includes(:user).all
        @decision_attendances_by_date = @decision_attendances.group_by { |decision_attendances| decision_attendances.employee_work_time_start.to_date } 
        @dates = (Date.today.beginning_of_month..Date.today.end_of_month).to_a
        @users = User.select(:id, :employee_name, :employee_name_kana)
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
        @users = User.select(:id, :employee_name, :employee_name_kana)
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
        @employee_work_time_start = params[:employee_work_time_start]
        @employee_work_time_end = params[:employee_work_time_end]

            DecisionAttendance.create(
                user_id: @user_id,
                employee_work_time_start: @employee_work_time_start,
                employee_work_time_end: @employee_work_time_end

                #employee_work_time_start: shift.employee_work_time_start,
                #employee_work_time_end: shift.employee_work_time_end
            )
        

        redirect_to complete_shifts_path
    end

    def mypage
        @shifts = PossibilityAttendance.select(:employee_work_time_start, :employee_work_time_end).where(user_id: current_user.id)
    end
    
        
end
