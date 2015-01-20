class ProjectsController < ApplicationController

	before_action :set_project, only: [:show, :edit, :update, :destroy]


	def index
		@projects = Project.all
	@hash = Gmaps4rails.build_markers(@projects) do |project, marker|
      marker.lat project.latitude
      marker.lng project.longitude
      marker.infowindow project.description
      marker.json({title: project.title})

      @staff_members = StaffMember.all
      @schedules = @staff_members.schedules.order(:created_at).page(params[:page]) 
  end

	end

	def show
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
		  redirect_to projects_path
		else
		  render 'new'
		end
	end

	def edit
	end

	def update
		if @project.update(project_params)
			redirect_to projects_path
		else
			render 'edit'
		end
	end

	def destroy  
		@project.destroy
		redirect_to projects_path
	end

def marker
    # 北から南、東から西の範囲をつくる
    lat = Range.new(*[params["north"], params["south"]].sort)
    lon = Range.new(*[params["east"], params["west"]].sort)
    # データ取得
    @locations = Project.where(latitude: lat, longitude: lon)
end


	private

		def project_params
			params[:project].permit(:title)
		end
	
		def set_project
			@project = Project.find(params[:id])
		end

end
