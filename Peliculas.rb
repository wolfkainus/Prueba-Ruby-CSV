#1. Crea un Clase para Peliculas
#-----------------------------------------------------------------------------------------
class Movie
  attr_reader :genre, :price, :studio
  def initialize(data = {})
    data.each { |name, value| instance_variable_set("@#{name}", value) }
  end
#-----------------------------------------------------------------------------------------

#3. Debe haber un método to_s que devuelva el 
#Nombre, fecha de estreno, genero y clasificación del a pelicula.
#-----------------------------------------------------------------------------------------
  def to_s
    "[#{@genre}] #{@dvd_title} (#{@year}) #{@rating}"
  end
#-----------------------------------------------------------------------------------------
end
