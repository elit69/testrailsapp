class TweetsController < ApplicationController
  def index 
    @tweets = Tweet.all
  end
  def show
    @tweet = Tweet.find(params[:id])
  end
  def destroy
    Tweet.find(params[:id]).destroy
    redirect_to action: :index
  end
end
