class StaticPagesController < ApplicationController
  def home
    @topic = current_user.topics.build if signed_in?
  end

  def help
  end
  
  def about
  end
  
  def contact_us
  end
end
