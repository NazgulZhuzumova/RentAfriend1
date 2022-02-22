class FriendsController < ApplicationController

  def new
    @friend = Friend.new
  end


  def show
    @friend = Friend.find(params[:id])
  end
end
