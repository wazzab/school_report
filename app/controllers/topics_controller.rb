class TopicsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def create
    @topic = current_user.topics.build(params[:topic])
    if @topic.save
      flash[:success] = "Topic created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
end