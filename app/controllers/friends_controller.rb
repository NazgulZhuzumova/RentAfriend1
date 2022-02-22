class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def edit
    @friend = Friend.find(params[:id])
  end
end
