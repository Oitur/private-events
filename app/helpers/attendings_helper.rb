# frozen_string_literal: true

module AttendingsHelper
  def already_attending?(event)
    return User.find(session[:id]).attend_events.include?(event) if session[:id]

    true
  end

  def attending_id(event)
    User.find(session[:id]).attendings.find_by(attend_event: event.id)
  end
end
