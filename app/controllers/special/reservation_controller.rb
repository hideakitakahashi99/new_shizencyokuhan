class Special::ReservationController < Special::Base
  layout 'special.html.erb'
  



  def new
    @reservation = Inquiry.new
    render :action => 'new'
  end

    def box1
    @reservation = Inquiry.new
    render :action => 'box1'
  end

    def box2
    @reservation = Inquiry.new
    render :action => 'box2'
  end

    def box3
    @reservation = Inquiry.new
    render :action => 'box3'
  end

  def confirm
    @reservation = Inquiry.new(reservation_params)
    if @reservation.valid?
      render :action => 'confirm'
    else
      render :new
    end
  end

  def thanks
    reservation = Inquiry.new(reservation_params)
    # send mail
    ReservationBoxMailer.reservation(reservation).deliver

    flash[:notice] = "お問い合わせ頂き、ありがとうございました。"
    render :action => 'thanks'
  end


  private
  def reservation_params
    params.require(:inquiry).permit(:name, :email, :message)
  end

end