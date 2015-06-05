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

  def randing
  # render 'static_pages/randing'
    redirect_to 'https://peraichi.com/landing_pages/view/shizencyokuhan'
  end 
end
