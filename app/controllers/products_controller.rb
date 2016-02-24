class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    if current_user.admin
      @product = Product.new
  else
    redirect_to :root, notice: 'Must be admin to do that'
  end
  end

  # GET /products/1/edit
  def edit
    if current_user.admin
  else
    redirect_to :root, notice: 'Must be admin to do that'
  end
  end

  # POST /products
  # POST /products.json
  def create
    if current_user.admin
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
    else
      redirect_to :root, notice: 'Must be admin to do that'
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    if current_user.admin
      respond_to do |format|
        if @product.update(product_params)
          format.html { redirect_to @product, notice: 'Product was successfully updated.' }
          format.json { render :show, status: :ok, location: @product }
        else
          format.html { render :edit }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to :root, notice: 'Must be admin to do that'
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    if current_user.admin
      @product.destroy
      respond_to do |format|
        format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to :root, notice: 'Must be admin to do that'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :content, :brand_id, :quantity, :price, :visuel, :visuel_cache)
    end
end
