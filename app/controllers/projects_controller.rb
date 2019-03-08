class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  skip_before_action :authenticate_user!, only: :search
  # permit non-user to see the index and show

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projects = policy_scope(Project)
    @projects = Project.all
    # authorize @project
  end

  def show
    @anonymous_message = AnonymousMessage.new
  end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to @project
  end

  def new
    # returns true if user is artist
    current_user.artist
    @project = Project.new
    # authorize access to project/new page for all users
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.artist = current_user
    authorize @project
    if @project.save!
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def destroy
    @project.destroy
    # should send artist to site for a new offer
    redirect_to projects_path
  end

  def search
    if params[:search_name].blank? && params[:search_city].blank?
      redirect_to projects_path
      @result = Project.all
    elsif params[:search_name].present?
      parameter = params[:search_name].capitalize
      @result = Project.global_search(parameter)
    elsif params[:search_city].present?
      parameter = params[:search_city].capitalize
      @result = Project.global_search(parameter)
    end
    authorize @result
  end

  def my_projects
    @projects = policy_scope(Project).where(artist: current_user)
    authorize @projects
  end

  private

  def set_project
    @project = Project.find(params[:id])
    authorize @project
  end

  def project_params
    params.require(:project).permit(:name, :description, :photo, :video, :city, :state, :price, :rating, :category_id, :genre_ids => [], :project_genres_ids =>[])
  end
end
