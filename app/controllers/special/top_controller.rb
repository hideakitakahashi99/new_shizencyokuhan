class Special::TopController < Special::Base
     layout 'special.html.erb'
    def index
            render action: 'index'
    end

  def new
    @reservation = Inquiry.new
    render :action => 'new'
  end

  def confirm
    @reservation = Inquiry.new(reservation_params)
    if @reservation.valid?
      render :action => 'confirm'
    else
      render :action => 'new'
    end
  end

  def thanks
    @reservation = Inquiry.new(reservation_params)
    # send mail
    Reservation_box_mailer.received_email(@reservation).deliver

    flash[:notice] = "お問い合わせ頂き、ありがとうございました。"
    render :action => 'thanks'
  end

  private
  def reservation_params
    params.require(:inquiry).permit(:name, :email, :message)
  end

end
