require 'active_record'

class Person
  include ActiveModel::Model

  attr_accessor :name, :age
  validates_presence_of :name
end

person = Person.new(name: 'bob', age: 18)
puts person.name
puts person.age
puts person.valid?
