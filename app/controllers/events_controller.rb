class EventsController < ApplicationController
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.create(event_params)
    redirect_to root_path
  end
  
  private
  def event_params
    params.require(:event).permit(:date)
  end
end
