class Student
  @first_name
  @last_name
  @email
  @username
  @password 

  # constructor
  # def initialize(first_name, last_name)
  #   @first_name = first_name
  #   @last_name = last_name
  # end

  # getter
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  #  setter
  def first_name=(name) 
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
tom.first_name = 'Tom'
tom.last_name = 'Bettercourt'
puts tom
puts tom.first_name
puts tom.last_name