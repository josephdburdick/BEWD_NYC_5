# this code
class Person
  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end
end

# is the same as

class Person
  attr_accessor :name
end
