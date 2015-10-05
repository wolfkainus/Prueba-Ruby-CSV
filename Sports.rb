require_relative 'Peliculas'

#2. Seleccionar 4 géneros de película y 
#crear clases para cada uno que hereden de la clase de películas.
#-----------------------------------------------------------------------------------------
class Sports < Movie #Genero 1
  def initialize(data = [])
    super
    @genre = 'Deportes'
  end
end