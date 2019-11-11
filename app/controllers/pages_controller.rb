class PagesController < ApplicationController
  def home
    @residences = Residence.all 
  end
end
