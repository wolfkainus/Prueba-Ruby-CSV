require_relative 'Peliculas'

#2. Seleccionar 4 géneros de película y 
#crear clases para cada uno que hereden de la clase de películas.
#-----------------------------------------------------------------------------------------
class Horror < Movie #Genero 2
  def initialize(data = [])
    super
    @genre = 'Horror'
  end
end