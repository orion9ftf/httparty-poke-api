class HomeController < ApplicationController
  http_basic_authenticate_with name: "name", password: "password"
  
  def index
    response = HTTParty.get("https://pokeapi.co/api/v2/pokemon")
    @response = JSON.parse(response.body)["results"]
  end
end
