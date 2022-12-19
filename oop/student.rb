class Student
  @first_name
  @last_name
  @email
  @username
  @password 

  # def initialize(first_name, last_name)
  #   @first_name = first_name
  #   @last_name = last_name
  # end

  def first_name(name) 
    @first_name = name
  end

  def last_name=(name)
    @last_name = name
  end

  def to_s()
    "Fullname is #{@first_name} #{@last_name}"
  end
end


tom = Student.new
tom.first_name('Tom')
tom.last_name = 'Bettercourt'
puts tom