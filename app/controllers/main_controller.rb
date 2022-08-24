class MainController < ApplicationController

  def index
    weather_object = Weather.new("97210")
    @humidity = weather_object.get_humidity()
    books_object = GetBestsellers.get_bestseller_list
    @title = books_object["results"]["books"][0]["title"]
    render :index
  end

end