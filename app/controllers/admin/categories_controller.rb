class Admin::CategoriesController < ApplicationController
  
  ad_name = ENV['admin_username']
  ad_password = ENV['admin_password']
  http_basic_authenticate_with name: ad_name, password: ad_password
  
  def index
    @categories = Category.order(id: :desc).all
  end
  
  def show
  end
  
  def new
    @categories = Category.new
  end

  def create
    @categories = Category.new(category_params)

    if @categories.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end
    private

  def category_params
    params.require(:category).permit(
      :name,
      :category_id
    )
  end
end



