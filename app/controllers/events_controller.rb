class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]

  def index
    @events = Event.search(params[:search])
    authorize @event
  end

  def show
    authorize @event
  end

  def new
    # nested resource - events#create
    # @project = Project.find(params[:project])
    @event = Event.new
    authorize @event
    # do we need authorize project?
    # authorize @project
  end

  def create
    @event = Event.new(event_params)
    @event.contractor = current_user
    # nested resource - events#create
    @event.project = Project.find(params[:project])
    authorize @event
    # do we need authorize project?
    authorize @project
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to @event
  end

  def destroy
    @event.destroy
    redirect_to project_path
  end

  def my_events
    @events = policy_scope(Event).where(artist: current_user)
    authorize my_events
  end

  private

  def event_params
    params.require(:event).permit(:date, :time, :price, :project)
  end

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end
end
