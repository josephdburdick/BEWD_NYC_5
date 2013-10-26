person = Object.new

def person.name name
  @name = name
end

def person.introduce
  "Hi! My name is #{@name}"
end
