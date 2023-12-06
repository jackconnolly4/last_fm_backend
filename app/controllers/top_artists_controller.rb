class TopArtistsController < ApplicationController
  def index
    response = HTTP.get("https://ws.audioscrobbler.com/2.0/?method=geo.gettopartists&country=spain&api_key=#{ENV["LAST_FM_KEY"]}&format=json")
    data = JSON.parse(response)
    render json: data
  end
end
