class Toy
  def initialize name, description
    @name = name
    @description = description
  end
end

skip_it = Toy.new "Skip it", "Whirring ball of death"
skip_it.name # => code/attr_errors.rb:9:in `<main>': undefined method `name' for #<Toy:0x007fb1fa0b1770> (NoMethodError)
