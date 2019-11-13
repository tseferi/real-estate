class PagesController < ApplicationController
  def home
    @residences = Residence.all 
    @amenities = Amenity.all
  end
end
