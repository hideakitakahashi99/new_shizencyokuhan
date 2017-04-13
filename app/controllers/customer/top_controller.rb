class Customer::TopController < Customer::Base
	def index
		if current_customer
		@open_staff_members = StaffMember.where(:suspended => true)
		@open_staff_members = @open_staff_members.page(params[:page]) 

		@staff_members = StaffMember.all
		
		@schedules = Schedule.order(:created_at)
		@schedules = @schedules.page(params[:page])

		@staff_addresses = StaffAddress.all
        @products = Product.where("stock >= 1")
        @products = @products.all.reverse_order
        
        @hokkaido = StaffAddress.where(prefecture: "北海道")
        @tohoku = StaffAddress.where("(prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?)", "青森県", "山形県", "秋田県", "岩手県", "宮城県", "福島県")
        @kanto = StaffAddress.where("(prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?)", "茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県")
        @cyubu = StaffAddress.where("(prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?)", "新潟県", "富山県", "石川県", "福井県", "山梨県", "長野県", "岐阜県", "静岡県", "愛知県")
        @kinki = StaffAddress.where("(prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?)", "三重県", "滋賀県", "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県")
        @cyugoku = StaffAddress.where("(prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?)", "鳥取県", "島根県", "岡山県", "広島県", "山口県")
        @shikoku = StaffAddress.where("(prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?)", "徳島県", "香川県", "愛媛県", "高知県")
        @kyusyu = StaffAddress.where("(prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?) OR (prefecture = ?)", "福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県")
        @okinawa = StaffAddress.where(prefecture: "沖縄県")
        
		@hash = Gmaps4rails.build_markers(@staff_addresses) do |staff_member, marker|
 		 marker.lat staff_member.latitude
		 marker.lng staff_member.longitude
		 marker.infowindow render_to_string(:partial => "/customer/top/infowindow", :locals => { :staff_member => staff_member})
         marker.json({title: staff_member.staff_member.farm_name})
         

		@search_form = Customer::StaffMemberSearchForm.new(params[:search])
		

		end
		render action: 'dashboard'
		else
		render action: 'index'

		
		end
	end 
	

end
