require 'slide_hero'

presentation 'Learning a language' do
  defaults headline_size: :medium, transition: :zoom
  slide "The Ruby Programming Language"

  grouped_slides do
    slide "" do
      media "twilight_zone.mp3", type: :audio
      point "You're traveling through another dimension...", animation: "fade-in"
      point "a dimension not only of sight and sound but of mind", animation: "fade-in"
      point "A journey into a wondrous land whose boundaries are that of imagination.", animation: "fade-in"
      point "That's a signpost up ahead", animation: "fade-in"
      point "your next stop...", animation: "fade-in"
      point "Ruby Code!", animation: "fade-in"
    end

    slide "Reminder: Ruby loves you" do
      point "Me... we'll see", animation: true
    end

    slide "Non-magical approach"

    slide "Approach" do
      point "We'll have sections called 'Takeaways'"
      point "Ask questions if you don't get a takeaway"
    end

    slide "Objects" do
      note "What is an object? Real world. 
      Cell Phone -> call someone. 
      Laptop -> open terminal, 
      abstract things like a conversation -> end, or a 
      friendship -> create."
    end

    slide "Messages" do
      note "We send messages to objects so they will do our bidding"
    end

    slide "irb" do
      point "Place to test out ruby"
      point "Great for experiments"
    end

    slide "Notes" do
      code(:ruby) do
        "irb_send.rb"
      end
      note "Story about going to a Ramen place Domo gochi sou sama deshita. They bowed and I left.
      All I knew is it's something you say after a meal. It worked! I got the right response!"
    end

    slide "Takeaways" do
      list do
        point "Objects in ruby respond to messages sent." 
        point "Tell you if they don't know how to respond."
        point "Messages dictated by their class." 
        point "Ruby Docs will tell you what those messages are."
      end
    end

    slide "Exercise" do
      point "Choose a pair to work with"
      point "Take 5 minutes to find 3 messages the Arrays respond to"
      point "Stretch Goal: Find 3 messges that the Hashes responds to that the Arrays don't", animation: "step"
    end

    slide "Syntactic Sugar" do
      code(:ruby) { "code_along_send_to_dot.rb" }

      note "Here's our first dose of what's called syntactic sugar. Story about sounding more native"
    end

    slide "Creating our Own Objects" do 
      image "bop_it.jpg"
    end

    slide "Back to irb" 

    slide "Notes" do
      code(:ruby) do
        'code_along_bopit1.rb'
      end
    end

    slide "Exercise (10 minutes)" do
      list do
        point "Open irb"
        point "Create a new Object and call it person"
        point "To this person add a name method that takes one argument. Store this as @name."
        point 'Add a method called introduce . Have it return "Hi! My name is #{@name}"'
      end
    end

    slide "Solution" do
      code(:ruby) do
        'exercise_person1.rb'
      end
    end

    slide "MOAR TOYS"
    slide "Too much repitition" do
      code(:ruby) do
        'code_along_bopit1.rb'
      end
      note "Too much repitition to write this code every time we need a new toy"
    end

    slide "Code Along - Classes"
    slide "Solution" do
      code(:ruby) do
        "code_along_toy.rb"
      end
    end

    slide "More Sugar" do
      code(:ruby) { "class_sugar.rb" }
    end

    slide "Exercise - Person" do
      point "Let's updgrade our person to use class syntax"
      list do
        point %{Create Person Class}
        point %{Initialize it with name, profession}
        point %{Give it an introduce method}
        point %{steven = Person.new "Steven", "Software Developer"}
        point %{steven.introduce #=> "Hi! My name is Steven. I'm a Software Developer"}
      end
      note "If we get his far, homework is to pass the test"
    end

    slide "Takeaways" do
      list do
        point "We can create objects that respond to messages" 
        point "You may also hear 'calling a method'"
        point "Methods can take additional information (arguments)"
        point "Objects share information with itself through @variables" 
      end
    end

    slide "Code Along - Testing" do
      point "We'll be giving you homework with tests"
      code(:ruby) { "code_along_tests.rb" }
    end

    slide "Exercise - Testing" do
      code(:ruby) {"exercise_tests.rb" }
    end

    slide "Getting and Setting @variables" do
      point "@name and @description are not accessible from the outside world"
      point "Need method that returns those values"
      code(:ruby) { 'attr_errors.rb' }
    end

    slide "Code Along - Attributes"

    slide "Oh the cavities (From the sugar)" do
      code(:ruby) { 'attr_accessors.rb'}
    end

    slide "Homework" do
      point "Pass tests posted here"
    end
  end
end
