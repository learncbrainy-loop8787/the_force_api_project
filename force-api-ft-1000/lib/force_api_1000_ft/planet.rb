
class Planets
  attr_accessor :name, :rotation_period, :orbital_period, :diameter, :climate, :gravity, :population, :surface_water, :residents, :terrain

  @@all = []

def initialize(name:, rotation_period:, orbital_period:, diameter:, climate:, gravity:, population:, surface_water:, residents:, terrain:)
  self.name = name
  
   self.diameter = diameter
   self.climate = climate
   self.gravity = gravity
    self.population = population
    self.surface_water = surface_water
    self.residents = residents
     self.terrain = terrain
     self.rotation_period = rotation_period
     self.orbital_period = orbital_period
     
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end