class BuildsController < ApplicationController
	http_basic_authenticate_with name: "admin", password: "123", except: [:index, :show]
	def index
		@builds = Build.all
	end
	def show
		@build = Build.find(params[:id])
	end
	def new
    end

  def edit
  	@build = Build.find(params[:id])
  end
   def create
   	
  	@build = Build.new(build_params)
 
    if @build.save
       redirect_to @build
    else
    	render 'new'
  end
end

def update
  @build = Build.find(params[:id])
 
  if @build.update(build_params)
    redirect_to @build
  else
    render 'edit'
  end
end

def destroy
    @build = Build.find(params[:id])
    @build.destroy
 
    redirect_to builds_path
  end
 
  private
  def build_params
    params.require(:build).permit(:name, :country, :style, :photo)
  end

end
