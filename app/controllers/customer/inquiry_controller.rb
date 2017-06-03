class Customer::InquiryController  < Customer::Base
  def index
    @inquiry = Inquiry.new
    render :action => 'index'
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.valid?
      render :action => 'confirm'
    else
      redirect_to :back
    end
  end

  def thanks
    @inquiry = Inquiry.new(inquiry_params)
    # send mail
    InquiryMailer.received_email(@inquiry).deliver

    flash[:notice] = "お問い合わせ頂き、ありがとうございました。"
    render :action => 'thanks'
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :message)
  end

end