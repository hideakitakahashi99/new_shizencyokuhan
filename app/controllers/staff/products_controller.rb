class Staff::ProductsController < Staff::Base
	before_action :set_product, only: [:show, :edit, :update, :destroy]

	def index
	if current_staff_member
		@staff_member = current_staff_member
		@products = @staff_member.products
	else
		@products = Product
	end
		@products = @products.order(:category)
		.page(params[:page]) 
	end

		def show
		end

		def new
		@staff_member = current_staff_member
		@product = @staff_member.products.build
		end

		def edit
		@staff_member = current_staff_member
		end

		def update
			@product = Product.find(params[:id])
			if @product.update(product_params)
				flash.notice = '産品情報を更新しました。'
				redirect_to :staff_products
			else
				render action: 'edit'
			end
		end

		def create
		@staff_member = current_staff_member
		@product = @staff_member.products.build(product_params)
		if @product.save
			flash.notice = '農産品を新規登録しました。'
			redirect_to :staff_products
		else
			render action: 'new'
		end
	end

	def destroy
		product = Product.find(params[:id])
		product.destroy!
		flash.notice = '農産品を削除しました。'
		redirect_to :staff_products
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
			:net, :productimg, :productimg_cache, :remove_productimg
			)
	end

    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

end
