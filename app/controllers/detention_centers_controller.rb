class DetentionCentersController < ApplicationController

	def index
		@detention_centers = DetentionCenter.all

	end

	def show
		@detention_center = DetentionCenter.find(params[:id])
	end

	def about
		
	end

end
