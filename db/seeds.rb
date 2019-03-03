
require "httparty"

@offset = 1

def results

    query = {
      # "term" => "bars",
      "category" => "bagels"
      "location" => "nyc",
      "limit" => 50,
      "radius" => 40000,
      "offset" => @offset,
    }

    headers = {
        "authorization" => "Bearer 4XGST6UoEEVmR-p63_JJs1sSnauxYHtw_5gjF4dHGNLYg8hg-BMmdvRneoYNFxEboE7k0uIyOEfcoPhifr4D4LjKurnORQlNXREUKWRO2EIdi6hW_EuhiTssqkd4XHYx",
    }
    # ENV[Yelp_API_Key]

    response = HTTParty.get("https://api.yelp.com/v3/businesses/search",
        :query => query,
        :headers => headers
    )

    businesses= response.map{|business|
      business[1]
       # [["name", restaurant.name], ["image", restaurant.image_url], ["yelp_link", restaurant.url], ["categories", restaurant.categories], ["rating", restaurant.rating], ["coordinates",restaurant.coordinates], ["price",restaurant.price], ["location1", restaurant.location], ["display_address",restaurant.display_address]]
      }
      print businesses[1]

    restaurants= businesses[0]

    restaurantMaker = restaurants.map{|restaurant|
      # Restaurant.new(name: restaurant["name"])
      Restaurant.create(name: restaurant["name"], image: restaurant["image_url"], yelp_link: restaurant["url"], tags:restaurant["categories"], rating: restaurant["rating"], coordinates: restaurant["coordinates"], price: restaurant["price"], location1: restaurant["location"])
    }

    # print restaurantMaker
    # print restaurants[1]

    @offset += 50

end

while (@offset<8000)
  results
end
