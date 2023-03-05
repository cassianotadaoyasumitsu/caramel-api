class CurrentUserController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    render json: UserSerializer.new(current_user).serializable_hash[:data][:attributes], status: :ok
  end
end
