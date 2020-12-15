class Show
  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total_salary_figure = 0
    @characters.each do |character|
      total_salary_figure += character.salary
    end
    total_salary_figure
  end

  def highest_paid_actor
    character_object = @characters.max_by do |character|
                          (character.salary)
                        end
    character_object.actor
  end

  def actors
    @characters.map do |character|
      character.actor
    end
  end


end
