class FriendsController < ApplicationController

  def index
    current_user = User.find(params[:user_id])
    #modify line 5 after you start using devise
    @friends = current_user.friends
    render json: @friends
  end

end
