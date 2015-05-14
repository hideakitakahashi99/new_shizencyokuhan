class Staff::StaticPagesController < Staff::Base
  def company
  	render 'staff/static_pages/company'
  end
  

  def intro 
    render 'staff/static_pages/intro'
  end
  def qa 
    render 'staff/static_pages/qa'
  end
  def commercial_transaction 
    render 'staff/static_pages/commercial_transaction'
  end
  def policy
    render 'staff/static_pages/policy'
  end
  def disclaimer
    render 'staff/static_pages/disclaimer'
  end
  def term
    render 'staff/static_pages/term'
  end
end
