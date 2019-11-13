class AmenitiesController < ApplicationController
    def index
        @amenities = Amenity.last(4)
    end    

    def show
        @amenity = Amenity.find params[:id] # params[:id]
    end

    def new
        @amenity = Amenity.new
    end
end    

  