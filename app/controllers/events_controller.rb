class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy accepted unaccepted]

  def index
    @events = Event.search(params[:search])
    authorize @event
  end

  def show
    authorize @event
  end

  def new
    # nested resource - events#create
    @project = Project.find(params[:project_id])
    @event = Event.new
    authorize @event
    # do we need authorize project?
    authorize @project
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @project = Project.find(params[:project_id])
    @event.project = @project
    authorize @event
    authorize @project
    if @event.save
      redirect_to my_events_user_path
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
    @events = policy_scope(Event).joins(:project).where(projects: { artist: current_user })
    authorize @events
  end

  def my_events_user
    @events = current_user.events
    authorize @events
  end

  def accepted
    @event.update(accepted: true)
    authorize @event
    redirect_to my_events_path
  end

  def unaccepted
    @event.update(accepted: false)
    authorize @event
    redirect_to my_events_path
  end

  private

  def event_params
    params.require(:event).permit(:datetime, :description, :accepted, :project_id, :user_id)
  end

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end
end
