class Customer::ProductController < Customer::Base
 before_action :authorize

  def show
    @staff_member = StaffMember.find(params[:staff_member_id])
    @product = Product.find(params[:id])
    @inquiry = Inquiry.new

    @cart = Cart.find_by(["staff_member_id = ? and customer_id = ?", @staff_member.id, current_customer.id ])
  rescue ActiveRecord::RecordNotFound
       @cart = Cart.create(:staff_member_id => @staff_member.id, :customer_id => current_customer.id)

  end
end