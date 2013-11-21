class UpvoteCalculator
	attr_accessor :story, :category

	def initialize story, category
		@story = story
		@category = category
	end 

	def upvotes
		upvotes = 1
		downcased_story = @story.downcase
		if downcased_story.include? 'cats'
			upvotes *= 5
		elsif downcased_story.include? 'bacon'
			upvotes *= 8
		else 
			1
		end

		if @category.downcase.include? 'food'
			upvotes *= 3
		end
		upvotes
	end
end
