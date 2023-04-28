class TweetsController < ApplicationController
  def index
    # mostrar todos los tweets
    @tweets = Tweet.all
    render "tweets/index"
  end

  def show
    # mostrar un tweet en especifico
    @tweet = Tweet.find_by(params[:id])
  end

  def create
  end

  def update
  end
end
