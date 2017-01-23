#Name: Justin Song
#Period: 6

#########################################################################
#1
#Write a class called Animal.
  #Attributes
    #legs (read only)
    #color (read and write)
    #height (read and write)
    #age (read and write)
    #food (read only) - Array. This represents how much food they have stored up
  #Instance methods
    #speak - Returns "I am a talking animal"
    #add_food(type) - Adds a string to the @food array
    #pieces_of_food - Returns how many pieces of food are in the @food array
#########################################################################
class Animal

  attr_accessor :color, :height, :age
  attr_reader :legs, :food

  def initialize(args)
    @legs = args.fetch(:legs)
    @color = args.fetch(:color)
    @height = args.fetch(:height)
    @age = args.fetch(:age)
    @food = args.fetch(:food)
  end

  def speak
    return "I am a talking animal"
  end

  def add_food(type)
    @age << type
  end

  def peices_of_food
    @food.length
  end
end





#########################################################################
#2
#Write a subclass of Animal called Dog
  #Additional Attributes
    #fav_toy (read and write)
  #Additional Instance Methods:
    #Override the speak method so that it returns: "Woof!"
    #wag_tail(times) - Returns "wag" a specified number of times: wag_tail(3) => "wag wag wag"
#########################################################################
class Dog < Animal
  attr_accessor :fav_toy
  def initialize(args)
    super(args)
    @fav_toy = args.fetch(:fav_toy)
  end

  def speak
    "Woof!"
  end

  def wag_tail(times)
    "wag" + " wag" * (times-1)
  end
end





#########################################################################
#3
#Write a subclass of Dog called Puppy
  #Additional Instance Methods:
    #Override the speak method so that it returns: "Yip!"
    #Override the add_food method to only allow the puppy to have 5 pieces of food at maximum
#########################################################################
class Puppy < Dog
  def speak
    "Yip!"
  end

  def add_food(type)
    if @food.length < 5
      food << type
    end
  end
end





#########################################################################
#4
#Write a subclass of Animal called bird
  #Additional Attributes:
    #wing_span (read and write)
  #Additional Instance Methods:
    #Override the speak method so that it returns: "Chirp!"
    #fav_food - return the first item in the food array
    #make_fav(food) - Pass this method an item of food. If the food is already
#                     in the food array delete it. Then add that food to the first
#                     item of the array.
#########################################################################
class Bird < Animal
  def initialize(args)
    super(args)
    @wing_span = args.fetch(:wing_span)
  end

  def speak
    "Chirp!"
  end

  def fav_food
    @food[0]
  end

  def make_fav(food)
    if @food.include?(food)
      @food.unshift(@food.delete(food))
    else
      @food.unshift(food)
    end
  end
end

#########################################################################
#Answer the following questions below.

#   A)  Does the color method work for instances of all of the classes above? Answer
#       In a comment below and type a snippet of code to prove your answer.
        
        # Yes the color method works for all of our classes above because it is in the 
        # super class
        # bird = (Bird.new({legs: 4, color: "brown", height: 4, age: 3, food:["fish", "bug"], wing_span: 10000}))
        # p bird.color 
        # This snippet of code would return brown showing that color works for the subclasses also

#   B)  Does the speak method work for instances of all the classes above? Are
#       their outputs the same or different from one another? Answer below and write
#       code to demonstrate.

        # The speak method works for all of the classes but each class prints out something
        # different.

        # bird = (Bird.new({legs: 4, color: "brown", height: 4, age: 3, food:["fish", "bug"], wing_span: 10000}))
        # bird.speak
        # returns "Chirp!"

        # puppy = (Puppy.new({legs: 4, color: "brown", height: 4, age: 3, food:["fish", "bug"], wing_span: 10000, fav_toy: "Rubber Duck"}))
        # puppy.speak
        # returns "Yip!"

#   C) If I create a bird instance and call the #food method, describe what the computer does
#      find where the definition of the #food method is? Where does it look first, second, etc.?

        # The computer first looks inside of the Bird class and when it doesn't find the method, it 
        # goes to the superclass(Animals) to find the method.

#   D) What how does the keyword super work?
    # It runs whatever method is given in the superclass

#   E) How does the keyword self work?
    # Self refers to the current class that it is in.  


