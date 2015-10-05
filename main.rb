require_relative 'lector.rb'
require_relative 'Grupos.rb'

def mainPeliculas(generos)
  generos.each do |genero, group|
    puts Movie.total group
    puts Movie.studios group
    puts Movie.promedio group
    puts '------------------------------------------------------------'
    puts nil
  end
end

if $0 == __FILE__
  movies = lector
  generos = group movies
  mainPeliculas generos
end
