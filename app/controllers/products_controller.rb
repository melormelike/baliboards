class ProductsController < ApplicationController

  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to boats_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :brand, :description, :type, :quantity, :length, :condition, :weight, :price)
  end
end
