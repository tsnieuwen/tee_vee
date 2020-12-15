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
end
