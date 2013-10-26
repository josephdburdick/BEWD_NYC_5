bopit = Object.new 

def bopit.to_s
  "Bopit!"
end

def bopit.description
  "A game for grabby people"
end

def bopit.player player
  @player = player
end

def bopit.welcome
  "Welcome to Bop it #{@player}! #{description}" 
end
