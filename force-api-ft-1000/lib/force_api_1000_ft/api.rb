class API
  BASE_URL = "https://swapi.dev/api/"

  def self.get_planets(next_page=nil)
    response = nil
    if next_page
      response = RestClient.get(next_page)
    else
      response = RestClient.get(BASE_URL + "planets/")
    end
    data = JSON.parse(response)

data["results"].each do |planet_data|
    name = planet_data["name"]
    	rotation_period = planet_data["rotation_period"]
    	orbital_period = planet_data["orbital_period"]
    	diameter = planet_data["diameter"]
    	climate = planet_data["climate"]
    	gravity = planet_data["gravity"]
    	terrain = planet_data["terrain"]
    	surface_water = planet_data["surface_water"]
    	population = planet_data["population"]
    	residents = planet_data[ "residents"]

      Planets.new(
        name: name,
  	rotation_period: rotation_period,
  	orbital_period: orbital_period,
  	diameter: diameter,
  	climate: climate,
  	gravity: gravity,
    population: population,
    terrain: terrain,
    surface_water: surface_water, 
    residents: residents
      )
    end

    if data["next"]
      self.get_planets(data["next"])
    end

  end

  def self.get_characters

  end
end
