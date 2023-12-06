class ArtistsController < ApplicationController
  def index
    response = HTTP.get("https://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=Cher&api_key=#{ENV["LAST_FM_KEY"]}&format=json")
    data = JSON.parse(response)
    render json: data
  end
end
