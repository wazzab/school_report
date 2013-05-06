class StaticPagesController < ApplicationController
  def home
    @user = current_user
    if params[:search_text]
      @search_results = Topic.paginate(page: params[:page]).where("title LIKE (?)", "%#{params[:search_text]}%")
    else
      #@search_results = Topic.paginate(page: params[:page]).first(10)
    end
  end

  def help
  end
  
  def about
  end
  
  def contact_us
  end
end
