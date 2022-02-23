class FriendsController < ApplicationController

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user = current_user
    if @friend.save
      redirect_to @friend, notice: "Made a new friend! :)"
    else
      render :new
    end
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def index
    @friends = Friend.all
  end

  private

  def friend_params
    params.require(:friend).permit(:name, :age, :location, :gender, :price)
  end
  def edit
    @friend = Friend.find(params[:id])
  end
end
