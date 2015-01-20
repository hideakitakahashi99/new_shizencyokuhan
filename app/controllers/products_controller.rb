class Staff::ProductsController < Staff::Base
	before_action :set_product, only: [:show, :edit, :update, :destroy]

	def index
		@products = Product.order(:category)
		@products = @products.page(params[:page]) 
	end

		def show
		end

		def new
		@product = Product.new
		end

		def edit
		end

		def create
		@product = Product.new(product_params)
		if @product.save
			flash.notice = '農産品を新規登録しました。'
			redirect_to :products
		else
			render action: 'new'
		end
	end

	def destroy
		product = Product.find(params[:id])
		product.destroy!
		flash.notice = '農産品を削除しました。'
		redirect_to :products
	end

	def who_bought
		@product = Product.find(params[:id])
		respond_to do |format|
			format.atom
		end
	end

    private
	def product_params
		params.require(:product).permit(
			:category, :variety, :method, 
			:description, :price, :stock, 
			:net, :image, :image_cache, :remove_image
			)
	end

    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

end
