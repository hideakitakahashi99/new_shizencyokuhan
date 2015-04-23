class Customer::LineItemsController < Customer::Base
	 before_action :set_line_item, only: [:show, :edit, :update, :destroy]

	def index
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		@cart = Cart.find(params[:cart_id]) 
		product = Product.find(params[:product_id])
		@line_item = @cart.add_product(product.id)
		respond_to do |format|
			if @line_item.save
				format.html { redirect_to :store_index }
				format.js { @current_item = @line_item }
				format.json { render json: @line_item,
					status: :created, location: @line_item }
			else
				format.html { render action: "new" }
				format.json { render json: @line_item.errors,
					status: :unprocessable_entity }
			end
	    end
	end

	def update
	end

	def destroy
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params[:line_item]
    end
end
