class ResidencesController < ApplicationController
    def index
        @residences = Residence.last(6)
    end

    def show
        @residence = Residence.find params[:id] # params[:id]
    end

    def new
        @residence = Residence.new
    end

    def create
    end
end