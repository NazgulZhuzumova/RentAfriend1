class FriendsController < ApplicationController

  def new
    @friend = Friend.new
  end


  def show
    @friend = Friend.find(params[:id])
  def index
    @friends = Friend.all
  end
end
