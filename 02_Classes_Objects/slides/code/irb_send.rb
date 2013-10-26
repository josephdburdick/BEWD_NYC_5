"steven".send :upcase # => "STEVEN"
["first_place", "second_place"].send :reverse # => ["second_place", "first_place"]
1.send :odd?  # => true
1.send :+, 3 # => 4

# Objects have a class 
"steven".send :class # => String
["first_place", "second_place"].send :class # => Array
1.send :class  # => Fixnum

# Things freak out if they don't understand
"steven".send :make_me_a_sandwich # => 
# ~> -:17:in `<main>': undefined method `make_me_a_sandwich' for "steven":String (NoMethodError)

# Even a class has a class, We'll be using this later
Array.send :class  # => Class

