class MuseumsController < ApplicationController
  def index
    @museums = Museum.all
    @locations_json = @museums.map { |museum| { position: { lat: museum.latitude, lng: museum.longitude }, name: museum.name } }.to_json
  end
  
  def show
    @museum = Museum.find(params[:id])
    @comment = Comment.new
    @comments = @museum.comments.order(id: :desc)
  end  
end
