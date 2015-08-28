class PlacesController < ApplicationController
	def index
		@places = Place.paginate :per_page => 10, :page => params[:page]

	end
end