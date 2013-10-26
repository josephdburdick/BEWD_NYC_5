require 'minitest/autorun'

describe Toy do 
  it "has a name, description, and a player" do
    bopit = Toy.new "Bop-it!", "A game for grabby people", "Steven"
    bopit.welcome.must_equal "Welcome to Bop-it! Steven! A game for grabby people"
  end

  it "can have the player changed" do
    bopit = Toy.new "Bop-it!", "A game for grabby people", "Steven"
    bopit.player = "Eddie"
    bopit.player.must_equal "Eddie"
  end
end
