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

#4. Debe haber un método que devuelva un listado que agrupe
#los estudios y cantidad de películas del genero seleccionado realizadas.
#-----------------------------------------------------------------------------------------
  def self.studios(group)
    studios = group.map {|movie| movie.studio}.uniq
    print "[Estudios: #{studios.size}]: "
    studios.join(', ')
  end

  def self.total(group)
    "Peliculas de '#{group.first.genre}': #{group.size}"
  end
#-----------------------------------------------------------------------------------------

#5. Debe haber un método que calcule el promedio de el precio de las películas por genero.
#-----------------------------------------------------------------------------------------
  def self.promedio(group)
    avg = group.inject(0) { |sum, movie| sum + movie.price } / group.size
    "Promedio de Precio de peliculas '#{group.first.genre}': $#{avg.round(2)}"
  end
#-----------------------------------------------------------------------------------------
end
