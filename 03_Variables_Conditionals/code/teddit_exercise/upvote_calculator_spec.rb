require 'minitest/autorun'
require_relative 'upvote_calculator'

describe UpvoteCalculator do
  it "takes a story and category on initialization" do
    uc = UpvoteCalculator.new "Cats frolic despite tuna shortage", "Nature"
    uc.story.must_equal "Cats frolic despite tuna shortage"
    uc.category.must_equal "Nature"
  end

  it "gives no extra upvotes if the story is bland" do
    uc = UpvoteCalculator.new "Bland", "bland"
    uc.upvotes.must_equal 1
  end

  it "multiplies the upvotes by 5 if the story is about cats" do 
    uc = UpvoteCalculator.new "cats!", "bland"
    uc.upvotes.must_equal 5
  end

  it "multiplies the upvotes by 8 if the story is about bacon" do
    uc = UpvoteCalculator.new "bacon", "bland"
    uc.upvotes.must_equal 8
  end

  it "multiplies the upvotes by 3 if the category is food" do
    uc = UpvoteCalculator.new "Bland", "food"
    uc.upvotes.must_equal 3
  end

  it "multipliers can be combined" do
    uc = UpvoteCalculator.new "cats!", "food"
    uc.upvotes.must_equal 15
  end

  it "multipliers are case insensitive" do
    uc = UpvoteCalculator.new "CATS!", "FOOD"
    uc.upvotes.must_equal 15
  end
end
