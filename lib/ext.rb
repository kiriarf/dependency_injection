class Greeter
  def initialize(name_class = Kernel)
    @name_class = name_class
  end

  def greet
    puts "What is your name?"
    name = @name_class.gets.chomp
    puts "Hello, #{name}"
  end
end