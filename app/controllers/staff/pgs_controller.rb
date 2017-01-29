class Staff::PgsController < Staff::Base
    before_action :set_pg, only: [:show, :edit, :update, :destroy]
    
    def index
        if current_staff_member
            @staff_member = current_staff_member
            @pgs = @staff_member.pgs
            else
            @pgs = Pg
        end
        @pgs = @pgs.order(:category)
        .page(params[:page])
    end
    
    def show
    end
    
    def new
        @staff_member = current_staff_member
        @pg = @staff_member.pgs.build
    end
    
    def edit
        @staff_member = current_staff_member
    end
    
    def update
        @pg = Pg.find(params[:id])
        if @pg.update(pg_params)
            flash.notice = '産品情報を更新しました。'
            redirect_to :staff_pgs
            else
            render action: 'edit'
        end
    end
    
    def create
        @staff_member = current_staff_member
        @pg = @staff_member.pgs.build(pg_params)
        if @pg.save
            flash.notice = '農産品を新規登録しました。'
            redirect_to :staff_pgs
            else
            render action: 'new'
        end
    end
    
    def destroy
        pg = Pg.find(params[:id])
        pg.destroy!
        flash.notice = '農産品を削除しました。'
        redirect_to :staff_pgs
    end
    
    def who_bought
        @pg = Pg.find(params[:id])
        respond_to do |format|
            format.atom
        end
    end
    
    def pg_edit
        @staff_member = current_staff_member
    end
    
    def pg_new
        @staff_member = current_staff_member
        @pg = @staff_member.pgs.build
    end
    
    
    private
    def pg_params
        params.require(:pg).permit(
                                   :category, :variety, :method,
                                   :description, :price, :stock,
                                   :net, :image, :image_cache, :remove_image, :seed_rising, :unit
                                   )
    end
    
    
    # Use callbacks to share common setup or constraints between actions.
    def set_pg
        @pg = Pg.find(params[:id])
    end
    
end
