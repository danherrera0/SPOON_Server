
require "httparty"

@offset = 1

def results

    query = {
      "term" => "restaurants",
      "location" => "nyc",
      "limit" => 50,
      "radius" => 40000,
      "offset" => @offset,
    }

    headers = {
        "authorization" => `Bearer #{ENV[Yelp_API_Key]}`
    }

    response = HTTParty.get("https://api.yelp.com/v3/businesses/search",
        :query => query,
        :headers => headers
    )

    businesses= response.map{|business|
      business[1]
    }

    print businesses[1]

    restaurants= businesses[0]
    restaurantMaker = restaurants.map{|restaurant|
      Restaurant.create(name: restaurant["name"], image: restaurant["image_url"], yelp_link: restaurant["url"], tags:restaurant["categories"], rating: restaurant["rating"], coordinates: restaurant["coordinates"], price: restaurant["price"], location1: restaurant["location"])
    }

    @offset += 50
end

while (@offset<8000)
  results
end
