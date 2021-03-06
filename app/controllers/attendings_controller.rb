# frozen_string_literal: true

class AttendingsController < ApplicationController
  def create
    return if already_attending?(Event.find(attending_params[:event_id]))

    @attend = Attending.create(attend_event_id: attending_params[:event_id], attendee_id: session[:id])
    flash[:success] = "Attending: #{@attend.attend_event.title}"
    redirect_to root_url
  end

  def destroy
    Attending.destroy(params[:id])
    redirect_to events_path
  end

  private

  def attending_params
    params.require(:event).permit(:event_id)
  end
end
