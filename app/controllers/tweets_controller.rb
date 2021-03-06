class TweetsController < ApplicationController
  before_action :get_tweets, only: [:edit, :update, :destroy, :show]
  before_action :check_auth, only: [:edit, :update, :destroy]
  def index 
    #session[:count] = session[:count].nil? ? 0 : session[:count] += 1    
    Rails.application.config.count += 1
    @page_number = 0
    @page_number = params[:page_number].to_i
    @tweets = Tweet.all.limit(20).offset((@page_number-1)*20)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tweets , except: [:updated_at, :created_at]  }
      format.xml { render xml: @tweets , except: [:updated_at, :created_at]  }
    end
    #render action: :statuss
  end
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tweet , except: [:updated_at, :created_at]  }
      format.xml { render xml: @tweet , except: [:updated_at, :created_at]  }
    end
  end
  def new 
    @tweet = Tweet.new
  end
  def create
    @tweet = Tweet.create(tweet_params)
    @tweet.save
    #sleep 1
    redirect_to @tweet
  end
  def edit    
  end
  def update
    @tweet.update(tweet_params)
    redirect_to @tweet
  end
  def destroy
    @tweet.destroy
    redirect_to action: :index
  end  
  ##########custom function
  def tweet_params
    params.require(:tweet).permit([:status, :zombie_id])
  end  
  def get_tweets
    @tweet = Tweet.find(params[:id])
  end
  def check_auth

  end
  #######custom routes
  #def status
  #  render action: :statuss
  #end
end
