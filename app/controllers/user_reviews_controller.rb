class UserReviewsController < ApplicationController

  before_action :find_user, only [ :new, :create ]

  def new
    @user_review = UserReview.new
  end

  def create
    @user_review = @user.user_reviews.build(user_review_params)
    @user_review.save
  end

  private

  def find_user
  @user = User.find(params[:user_id])
  end

  def user_review_params
    params.require(:user_review).permit(:content, :rating)
  end
end
