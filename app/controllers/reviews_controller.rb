class ReviewsController < ApplicationController
  def create
    review = Review.new(review_params)
    review.user_id = session[:user_id]
    review.product_id = params[:product_id]
    review.save if review.save == true
    redirect_to "/products/#{review.product_id}"
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to :back, notice: 'Review Deleted!'
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
