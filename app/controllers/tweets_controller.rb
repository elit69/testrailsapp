class TweetsController < ApplicationController
  def index 
    @tweets = Tweet.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tweets , except: [:updated_at, :created_at]  }
      format.xml { render xml: @tweets , except: [:updated_at, :created_at]  }
    end
    #render action: :statuss
  end
  def show
    @tweet = Tweet.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tweet }
      format.xml { render xml: @tweet }
    end
  end

  def new 
    @tweet = Tweet.new
  end

  def destroy
    Tweet.find(params[:id]).destroy
    redirect_to action: :index
  end

  #custom routes
  #def status
  #  render action: :statuss
  #end
end
