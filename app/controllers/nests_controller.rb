class NestsController < ApplicationController

before_action :set_user, only: [:new,:create, :show]

  def new # GET /nests/new
    @nest = Nest.new
  end

  def show # GET /nests/:id
  end

  def create # POST /nests
    @nest = @user.nests.build(nest_params)
    if @nest.save
      redirect_to user_path(@nest.user_id)
    else
      render :new
    end
  end

  def edit # GET /nests/:id/edit
  end

  def update # PATCH /nests/:id
    @nest.update(user_params)
    redirect_to user_path(@nest)
  end

  def destroy # DELETE /nests/:id
    @nest = Nest.find(params['id'])
    @user = User.find(@nest.user_id)
    @nest.destroy
    redirect_to users_path(@user.id)
  end

  private

  def set_nest
    @nest = Nest.find(params['user_id'])
  end

  def set_user
    @user = User.find(params['user_id'])
  end

  def nest_params
    params.require(:nest).permit(:content, :rating)
  end
end
