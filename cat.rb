class Cat

  def initialize(name, food, meal_time)
    @name = name
    @food = food
    @meal_time = meal_time
  end
  def name
    @name
  end
  def food
    @food
  end
  def meal_time
    @meal_time
  end
  def eats_at
    if @meal_time < 12
      @eats_at = "#{@meal_time} AM"
    else
      @eats_at = "#{@meal_time} PM"
    end
  end
  def meow
    "My name is #{@name} and I eat #{@food} at #{eats_at}"
  end
end

misha = Cat.new("misha", "toast", 15 )
tony = Cat.new("tony", "fish", 11 )

puts misha.meow
puts tony.meow
