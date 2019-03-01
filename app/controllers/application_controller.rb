class ApplicationController < ActionController::API
  #  YOU NEED THIS
  require "httparty"
def results
  query = {
    "term" => "food",
    "location" => "nyc",
    "limit" => 18,
    "radius" => 20000,
  }

  headers = {
      "authorization" => "Bearer 4XGST6UoEEVmR-p63_JJs1sSnauxYHtw_5gjF4dHGNLYg8hg-BMmdvRneoYNFxEboE7k0uIyOEfcoPhifr4D4LjKurnORQlNXREUKWRO2EIdi6hW_EuhiTssqkd4XHYx",
  }
  # ENV[Yelp_API_Key]

  response = HTTParty.get("https://api.yelp.com/v3/businesses/search",
      :query => query,
      :headers => headers
  )
end







end
