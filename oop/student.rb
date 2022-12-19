class Student

  attr_accessor :first_name, :last_name, :email, :username, :password
  # attr_reader
  # attr_writer

  @first_name
  @last_name
  @email
  @username
  @password 

  # constructor
  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  # getter
  # def first_name
  #   @first_name
  # end

  # def last_name
  #   @last_name
  # end

  #  setter
  # def first_name=(name)
  #   @first_name = name
  # end

  # def last_name=(name)
  #   @last_name = name
  # end

  def to_s()
    "Fullname is #{@first_name} #{@last_name}"
  end
end

tom = Student.new('Tom', 'Bettercourt', 'bettercourt1@example.com', 'beer1', 'password')
puts tom