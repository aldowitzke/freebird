class ReviewsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.project = Project.find(params[:project_id])
    @review.save

    authorize @review
    redirect_to @review.project
  end

  # validates :rate, inclusion: { in: (0..5) }

  private

  def review_params
    params.require(:review).permit(:content, :rate, :user_id)
  end
end
