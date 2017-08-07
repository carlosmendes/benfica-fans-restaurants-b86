class RestaurantsController < ApplicationController
  # Let's fake a DB
  RESTAURANTS = [
    { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    { name: "Sushi Samba", address: "City, London", category: "japanese" }
  ]
  def index
    @restaurants = RESTAURANTS
    @number_of_restaurants = @restaurants.count

    if params["food_type"] && params["food_type"] != ''
      @restaurants = @restaurants.select{ |restaurant| restaurant[:category] == params["food_type"] }
    end

  end

  def create
    render plain: "restaurant #{params[:name]} created"
  end

  def show
    @restaurant = RESTAURANTS[params[:number].to_i - 1]
  end
end
