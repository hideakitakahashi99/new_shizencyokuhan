class OrderPDF < Prawn::Document

	def initialize(order, address, staff_member)
		super()

		@order = order
		@address = address
		@staff_member = staff_member

		font "vendor/fonts/ipaexg.ttf"

		header_logo
		header
		header_lead
		table_content
		footer
		
	end

	def header_logo
		y_position = cursor - 0
		bounding_box([430, y_position], :width => 100, :height => 20)do 
		font_size 12
		text "#{@staff_member.farm_name}"
	    end
	end

	def header

		text "受注票", size:21
		stroke_color "eeeeee"
		stroke_line [0, 670], [530, 670]
	end

	def header_lead
		y_position = cursor - 30
		bounding_box([20, y_position], :width => 500, :height => 80)do 
		font_size 10.5
		text "　　注文日時:  #{@order.created_at}"
		text "　　　注文者:  #{@order.customer.family_name} #{@order.customer.given_name}様"
		text "　送り先住所:  〒#{@address.postal_code} #{@address.prefecture} #{@address.city} #{@address.address1} #{@address.address2}"
		text "　　電話番号:  #{@address.phone}"
		text "お支払い方法:  #{@order.payment}"	
		end
	end
	def table_content
		table line_item_rows do
			cells.padding = 8
			cells.borders = [:bottom,]
			cells.border_width = 0.5

			row(0).border_width = 0.5
			row(-2).border_width = 0.5
			row(-1).background_color = "ffffff"
			row(-1).borders = []

			self.header = true
			self.column_widths = [150, 80, 70, 70, 90]
		end


	end

	def line_item_rows
		arr = [["品目","品種","内容量","注文数","小計(税込)"]]
		@order.line_items.map.with_index do |item, i|
		arr << [item.product.category, item.product.variety, item.product.net, item.quantity, item.total_price]
		end
		arr << ["","","","","合計(税込)： ¥",@order.total_price]
		return arr
	end

	def footer
		y_position = cursor - 50
		bounding_box([180, y_position], :width => 350, :height => 50)do 
		font_size 10.5
		text "販売元：自然栽培ちょくはん　http://www.shizencyokuhan.com"
	end
	end

end

