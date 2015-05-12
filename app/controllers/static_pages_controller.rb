class StaticPagesController < ApplicationController
  def company
  	render 'static_pages/company'
  end

  def intro 
    render 'static_pages/intro'
  end
  def qa 
    render 'static_pages/qa'
  end
  def commercial_transaction 
    render 'static_pages/commercial_transaction'
  end
  def policy
    render 'static_pages/policy'
  end
  def disclaimer
    render 'static_pages/disclaimer'
  end
  def term
    render 'static_pages/term'
  end
end
