# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    
    @product = Product.find params[:id]
    product_id = @product.id
    @users = User.all
    @reviews = ProductReview.where("product_id = #{product_id}")
    
  end
end
