require_relative 'Peliculas'

#2. Seleccionar 4 géneros de película y 
#crear clases para cada uno que hereden de la clase de películas.
#-----------------------------------------------------------------------------------------
class Action < Movie
  def initialize(data = [])
    super
    @genre = 'Acción y Aventuras'
  end
end