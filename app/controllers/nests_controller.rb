class NestsController < ApplicationController

before_action :set_user, only: [:new,:create]

  def new # GET /nests/new
    @nest = Nest.new
  end

  def create # POST /nests
    @nest = @user.nests.build(nest_params)
    if @nest.save
      redirect_to user_path(@nest.user_id)
    else
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params['user_id'])
  end

  def nest_params
    params.require(:nest).permit(:content, :rating)
  end
end
