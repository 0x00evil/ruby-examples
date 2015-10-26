# nameed subclass of struct
Struct.new("Customer", :name, :address)
customer_one = Struct::Customer.new("dave", "123 main")
puts customer_one.name
puts customer_one.address

# anonymous sublcass of struct, recommended
Customer = Struct.new(:name, :address)
customer_two = Customer.new("dave", "123 main")
puts customer_two.name
puts customer_two.address
