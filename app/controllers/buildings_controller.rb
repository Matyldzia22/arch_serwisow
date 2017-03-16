class BuildingsController < ApplicationController
	def new
	end

	def create 
		@build = Build.new(params[:build])
 
        @build.save
        redirect_to @build

	end
end
