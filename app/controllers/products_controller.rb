class ProductsController < ApplicationController
  before_action :only => [:new, :edit] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def require_admin
    if !current_user.admin?
      redirect_to benefits_path
    end
  end

  # def is_admin?
  #   current_user && current_user.admin
  # end

# landing page, show all products
  def index
    @products = Product.all
    @most_recent = Product.most_recent
    if Product.most_reviewed.first
     @most_reviewed = Product.most_reviewed.first.name
    end
    render :index
  end

# form for adding new product
  def new
    @product = Product.new
    render :new
  end

# create a new product
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else 
      render :new
    end
  end

# Update a product
  def edit
    @product = Product.find(params[:id])
    render :edit
  end

# show a single product
  def show
    @product = Product.find(params[:id])
    render :show
  end

# Update a product
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else 
      render :edit
    end
  end

# delete a product
  def destroy
    @product = Product.find(params[:id])
    if current_user.admin?
      @product.destroy
    end
    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:name, :cost, :country_of_origin)
    end

end