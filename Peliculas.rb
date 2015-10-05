#1. Crea un Clase para Peliculas
#-----------------------------------------------------------------------------------------
class Movie
  attr_reader :genre, :price, :studio
  def initialize(data = {})
    data.each { |name, value| instance_variable_set("@#{name}", value) }
  end
end
