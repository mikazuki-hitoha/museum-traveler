class MuseumsController < ApplicationController
  def index
    @museums = Museum.all
    @locations_json = @museums.map { |museum| { lat: museum.latitude, lng: museum.longitude } }.to_json
  end
  
  def show
    @museum = Museum.find(params[:id])
  end  
end
