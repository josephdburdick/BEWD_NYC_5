class Toy
  def initialize name, description, player
    @name = name
    @description = description
    @player = player
  end

  def player player
    @player = player
  end

  def welcome
    "Welcome to #{@name} #{@player}! #{@description}"
  end
end
