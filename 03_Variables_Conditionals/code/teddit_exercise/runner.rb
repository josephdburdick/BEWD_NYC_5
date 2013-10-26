require_relative 'upvote_calculator'
# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below.
# Where you see comments (lines that begin with #) replace it with code so that the program works.

class UserIO
  def get_input
    #Get input from the user
  end

  def show(message)
    #Show whatever gets passed in to the screen
  end
end

user_io = UserIO.new
user_io.show "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
user_io.show "Please enter a News story:"
story = user_io.get_input

user_io.show "Please give it a category:"
category = user_io.get_input

upvotes = UpvoteCalculator.new(story, category).upvotes
user_io.show "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
