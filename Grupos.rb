require_relative 'Sports'
require_relative 'Horror'
require_relative 'Action'
require_relative 'Animation'

def group(movies)
  sports = []
  horrors = []
  actions = []
  animations = []

  movies.each do |movie|
    case movie[:genre]
    when 'Sports'
      sports << Sports.new(movie)
    when 'Horror'
      horrors << Horror.new(movie)
    when 'Action/Adventure'
      actions << Action.new(movie)
    when 'Animation'
      animations << Animation.new(movie)
    end
  end

  return {
    sports: sports,
    horror: horrors,
    action: actions, 
    animation: animations,
  }
end