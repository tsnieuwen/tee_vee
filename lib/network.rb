class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show_to_be_added)
    @shows << show_to_be_added
  end

  def main_characters
    character_arrays = @shows.map do |show|
                          show.characters
                       end
    return character_arrays.flatten
  end

  def actors_by_show
    grouped_shows = {}
    @shows.each do |show|
      grouped_shows[show] = show.actors
    end
    grouped_shows
  end

  ###Iteration 4

  def get_all_shows_by_actor(actor)
    @shows.select do |show|
      show.characters.each do |character|
        character.name == actor
      end
    end
  end

  def shows_by_actor
    actors = []
    @shows.each do |show|
      actors << show.actors
    end
    flatten_actors = actors.flatten.uniq
    # require "pry"; binding.pry
    grouped_shows = {}

    flatten_actors.each do |actor|
      grouped_shows[actor] = get_all_shows_by_actor(actor)
    end
    grouped_shows
    require "pry"; binding.pry
  end

end
