class Admin::CategoriesController < ApplicationController
  
  before_filter :authenticate
  
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



