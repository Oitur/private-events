# frozen_string_literal: true

class EventsController < ApplicationController
  before_action :logged_in?, only: [:create]
  def show
    set_event
  end

  def new
    @event = Event.new
  end

  def create
    creator = User.find(session[:id])
    @event = creator.events.build(event_params)
    if @event.save
      flash[:success] = 'Event created'
      redirect_to @event
    else
      flash.now[:danger] = "Error: #{@event.errors.full_messages}!"
      render 'new'
    end
  end

  def index
    @events = Event.all
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :date, :time)
  end
end
