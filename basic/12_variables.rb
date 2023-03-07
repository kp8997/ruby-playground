class Person 
  @@count = 0
  @name = "John Doe"

  def initialize(name)
    @@count = @@count + 1
    @name = name
  end

  def say
    puts "Hello, #{@name}"
    puts "order is #{@@count}"
  end

  
end

p = Person.new('Shen')
p.say
x = Person.new('Qyania')
x.say