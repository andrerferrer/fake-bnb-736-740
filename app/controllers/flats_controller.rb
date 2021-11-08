require "open-uri"

class FlatsController < ApplicationController
  def index
    @flats = fetch_the_api_for_flats
  end

  def show
    id = params[:id].to_i
    flats = fetch_the_api_for_flats
    @flat = flats.find { |flat| flat['id'] == id }
  end

  private

  def fetch_the_api_for_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    JSON.parse(URI.open(url).read)
  end
end
