class Customer::ProductController < Customer::Base
 skip_before_action :authorize

  def show
    @staff_member = StaffMember.find(params[:staff_member_id])
    @product = Product.find(params[:id])
    @inquiry = Inquiry.new
  if current_customer
    @cart = Cart.find_by(["staff_member_id = ? and customer_id = ?", @staff_member.id, current_customer.id ])
  end
  rescue ActiveRecord::RecordNotFound
       @cart = Cart.create(:staff_member_id => @staff_member.id, :customer_id => current_customer.id)
end

end