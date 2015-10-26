require 'ostruct'

person = OpenStruct.new
person.name = "John Smith"
person.age = 70
person.pension = 300

puts person.name
puts person.age
puts person.pension
puts person.address.inspect
