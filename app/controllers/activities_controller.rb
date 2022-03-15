class ApplicationController < ActionController::Base  
    def create
      @activity = Activity.new(params["activity"])
      @activity.user_id = @current_user.id
      @activity.save
      redirect_to "/posts/#{@activity.post_id}"
    end
  end
  