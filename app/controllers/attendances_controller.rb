class AttendancesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]

  def index
    @attendances = @event.attendances
  end

  def show
  end

  def new
    @attendance = @event.attendances.build
  end

  def create
    @attendance = @event.attendances.build(attendance_params)

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to root_path,
notice: 'Attendance was successfully created.' }
        format.json { render :show, status: :created, location: @attendance }
      else
        format.html { render :new }
        format.json { render json: @attendance.errors, status: :unprocessable_
entity }
      end
    end
  end

  def destroy
    @attendance.destroy
    redirect_to root_path
  end

  private

    def set_event
      @event = Event.find(params[:event_id])
    end

    def set_attendance
      @attendance = @event.attendances.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attendance_params
      params.require(:attendance).permit(:attendee_id, :event_to_attend_id)
    end
end
