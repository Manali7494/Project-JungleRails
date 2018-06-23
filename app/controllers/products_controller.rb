class ProductsController < ApplicationController
  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @users = User.all
    @reviews = Review.where("product_id = #{@product.id}").order(id: :desc)
    # @review = Review.find_by(id: @review_indv)
  end
end
