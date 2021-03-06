class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy, :pending_friends, :friendships]

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  def friendships
    @friendships = @user.friendships
    render json: @friendships
  end

  def friendship_delete
    @friendship = Friendship.where(user_id: params[:user_id], friend_id: params[:friend_id]).first
    friendship_id = @friendship.id
    @friendship.destroy
    render json: {
      friendship_id: friendship_id.to_i,
      status: 200,
      message: "Successfully deleted friendship",
    }
  end

  def friendships_update
    @friendship = Friendship.find(params[:friendship_id])
    if @friendship.update(friendship_params)
      render json: @friendship
    else
      render json: @friendship.errors, status: :unprocessable_entity
    end
  end

  def pending_friends
    @pending_friends = @user.pending_friends.uniq
    render json: @pending_friends
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id] || params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def friendship_params
      params.permit(:last_seen)
    end

    def user_params
      params.require(:user).permit(:name, :username, :password, :last_seen)
    end
end
