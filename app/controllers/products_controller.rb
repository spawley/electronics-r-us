class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index

    @products   = Product.all

    if @products.count() > 6
      @products   = Product.all.limit(6)
      @pagintated = Product.all.count() / 6.0
    end

    @categories = Category.pluck(:name, :id)

    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    end

    case params[:category]
      when "Show All"
        @products = Product.all.limit(6)
        @cat_value = nil
      when "processors"
        @products = Product.where('category_id = ?', 1)
        @cat_value = 1
      when "Graphics Cards"
        @products = Product.where('category_id = ?', 2)
        @cat_value = 2
      when "computers"
        @products = Product.where('category_id = ?', 3)
        @cat_value = 3
    end

    if params[:page].to_i > 1

      @display = (params[:page].to_i - 1) * 6


      @products = Product.limit(6).offset(@display)
    end

  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def contact
    #$text = session[:my_key1]
  end

  def about
    #$text = session[:my_key1]
  end

  def set_contact_text
    #session[:my_key1] = 'my value'
    #redirect_to "/"

    $contact_text = params[:my_field]

  end

  def set_about_text
    #session[:my_key1] = 'my value'
    #redirect_to "/"

    $about_text = params[:my_field]

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :stock_quantity, :image, :created_at, :updated_at)
    end

end
