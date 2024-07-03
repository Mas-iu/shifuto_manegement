class DecisionAttendancesController < ApplicationController
    before_action :set_decision_attendance, only: [:destroy]
      
    def destroy
        @decision_attendance.destroy
        redirect_to complete_shifts_path, notice: 'シフトが削除されました'
    end
      
    private
      
    def set_decision_attendance
        @decision_attendance = DecisionAttendance.find(params[:id])
    end
end