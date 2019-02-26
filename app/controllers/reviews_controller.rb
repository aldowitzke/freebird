class ReviewsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.contractor = current_user
    @review.project = Project.find(params[:project_id])
    @review.save
    authorize @review
    redirect_to @review.project
  end

  private

  def review_params
    params.require(:review).permit(:content, :contractor_id, :artist_id)
  end
end
