class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index # GET /users
    @users = User.all
  end

  def show # GET /users/:id
    @nest = @user.nest
  end

  def new # GET /users/new
    @user = User.new
  end

  def create # POST /users
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit # GET /users/:id/edit
  end

  def update # PATCH /users/:id
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy # DELETE /users/:id
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email  )
  end

  def set_user
      @user = User.find(params[:id])
  end
end
