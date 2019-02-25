class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :search

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

  def search
    @result = Project.all
    if params[:search_genre].present?
      parameter = params[:search_genre].downcase
      @result = @result.where(genre: parameter)
    end
    if params[:search_city].present?
      parameter = params[:search_city].downcase
      @result = @result.where(city: parameter)
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:genre, :artistic_name, :description, :band_format, :photo, :video, :city)
  end
end
