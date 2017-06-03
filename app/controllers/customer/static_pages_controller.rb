class Customer::StaticPagesController < Customer::Base
  def company
  	render 'customer/static_pages/company'
  end

  def feed_page
    
    @feed_items = Schedule.from_staff_members_followed_by(current_customer).order(:created_at)
  
  end

  def intro 
    render 'customer/static_pages/intro'
  end
  def qa 
    render 'customer/static_pages/qa'
  end
  def commercial_transaction 
    render 'customer/static_pages/commercial_transaction'
  end
  def policy
    render 'customer/static_pages/policy'
  end
  def disclaimer
    render 'customer/static_pages/disclaimer'
  end
  def term
    render 'customer/static_pages/term'
  end

  def shizen
    render 'customer/static_pages/shizen'
  end
end
