class EventsController < ApplicationController

  before_action :set_event, only: %i[show edit update destroy]
  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event.save
  end

  def edit
  end

  def update
    @event.update(params[:event])
  end

  def destroy
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:date, :time, :price)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end