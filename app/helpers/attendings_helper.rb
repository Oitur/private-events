# frozen_string_literal: true

module AttendingsHelper
  def already_attending?(event)
    return User.find(session[:id]).attend_events.include?(event) if session[:id]

    true
  end
end
