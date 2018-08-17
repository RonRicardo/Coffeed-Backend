class FriendRequestsController < ApplicationController
  before_action :set_friend_request, :set_user, except: [:incoming, :outgoing, :create]

  def create
    friend = User.find(params[:friend_id])
    current_user = User.find(params[:user_id])
    @friend_request = current_user.friend_requests.new(friend: friend)

    if @friend_request.save
      render json: @friend_request
    else
      render json: @friend_request.errors, status: :unprocessable_entity
    end
  end

  # def incoming
  #   @incoming = FriendRequest.where(friend: current_user)
  #     render json: @incoming
  # end
  #
  # def outgoing
  #   @outgoing = current_user.friend_requests
  #     render json: @outgoing
  # end


  def destroy
    @friend_request.destroy
    render json: { status: 200, message: "Successfully deleted friend request"}
  end

  def update
    @friend_request.accept
    render json: { status: 200, message: "Successfully accepted friend request"}

  end

  private

  def set_friend_request
    @friend_request = FriendRequest.where(friend: User.find(params[:friend_id]), user: User.find(params[:user_id]))[0]
  end

  def set_user
    current_user = User.find_by(params[:user_id])
  end
end
