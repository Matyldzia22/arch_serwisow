class BuildsController < ApplicationController
	def index
		@builds = Build.all
	end
	def show
		@build = Build.find(params[:id])
	end
	def new
  end
   def create
   	
  	@build = Build.new(build_params)
 
    @build.save
   redirect_to @build
  end
 
  private
  def build_params
    params.require(:build).permit(:name, :country, :style, :photo)
  end

end
