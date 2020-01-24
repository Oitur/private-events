class AttendingsController < ApplicationController
  def create
    @attend = Attending.create(attend_event_id: attending_params[:event_id], attendee_id: session[:id])
    flash[:success] = "Attending: #{@attend.attend_event.title}"
    redirect_to root_url
  end

  private

  def attending_params
    params.require(:event).permit(:event_id)
  end
end