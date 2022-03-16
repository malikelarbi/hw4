class PostsController < ApplicationController

  def show
    @post = Post.find(params["id"])
    @activity = Activity.new
    @activity.post_id = @post.id
  end

  def new
    @post = Post.new
    @place = Place.find(params["place_id"])
    @post.place_id = @place.id
  end

  def create
    @post = Post.new(params["post"])
    @post.save
    redirect_to "/places/#{@post.place_id}"
  end

end
