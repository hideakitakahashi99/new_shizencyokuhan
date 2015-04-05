class Customer::StaticPagesController < Customer::Base
  def company
  	render 'customer/static_pages/company'
  end

  def delivery_charge 

  end

  def low
  end

  def feed_page
    
    @feed_items = Schedule.from_staff_members_followed_by(current_customer).order(:created_at)
  
  end
end
