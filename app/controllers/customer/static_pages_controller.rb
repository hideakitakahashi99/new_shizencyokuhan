class Customer::StaticPagesController < Customer::Base
  def company
  	render 'customer/static_pages/company'
  end

  def delivery_charge 

  end

  def low
  end
  
end
