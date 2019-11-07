class ResidencesController < ApplicationController
    def index
        @residences = Residence.all
    end

    def show
        @residence = Residence.first # params[:id]
    end

    def new
        @residence = Residence.new
    end

    def create
    end
end