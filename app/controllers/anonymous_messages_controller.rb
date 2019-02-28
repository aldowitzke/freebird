class AnonymousMessagesController < ApplicationController
  def create
    @anonymous_message = AnonymousMessage.create(anonymous_message_params)
    @anonymous_message.project = Project.find(params[:project_id])
    authorize @anonymous_message
    if @anonymous_message.save
      redirect_to project_path(@anonymous_message.project)
    else
      render :new
    end
  end

  def update
    @anonymous_message = AnonymousMessage.find(params[:id])
    @anonymous_message.update(anonymous_message_params)
    authorize @anonymous_message
    redirect_to project_path(@anonymous_message.project)
  end

  private

  def anonymous_message_params
    params.require(:anonymous_message).permit(:answer, :question)
  end
end
