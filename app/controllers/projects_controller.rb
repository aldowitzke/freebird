class ProjectsController < ApplicationController

  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def edit
  end

  def update
    @project.update(params[:project])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    @project.save
  end

  def destroy
    @project.destroy
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:genre, :artistic_name, :description, :band_format, :photo, :video, :city)
  end
end
