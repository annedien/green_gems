class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])

  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: "Product successfully created"
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: "Product successfully updated"
    else
      render :edit
    end
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:species, :maintenance, :price, :description, :image_url, :location, :needs_sun, :needs_shade, :needs_halfshade)
  end

end #end of class
