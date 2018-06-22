class Admin::CategoriesController < ApplicationController
  ad_name = ENV['admin_username']
  ad_password = ENV['admin_password']
  http_basic_authenticate_with name: ad_name, password: ad_password
  
  def index
    @categories = Category.order(id: :asc).all
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  def new
    @category = Category.new
  end

  def category_params
    params.require(:category).permit(:name)
    end
end
