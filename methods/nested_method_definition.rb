class Test
  def one
    puts "in method one"

    # dynamically define a method
    def two
      puts "in method two"
    end
  end
end
test = Test.new
test.one
test.two
