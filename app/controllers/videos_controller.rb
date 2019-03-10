class VideosController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @video = Video.new
    authorize @review
  end

  def create
    @video = Video.new(video_params)
    @video.project = Project.find(params[:project_id])
    @video.save

    authorize @video
  end

  private

  def review_params
    params.require(:video).permit(:url)
  end

end
