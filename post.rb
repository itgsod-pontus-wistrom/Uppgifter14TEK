# Ask for the weight
puts "Enter the weight in g"
# Get the weight
weight = gets.chomp.to_i
if weight <= 0
  puts "Please enter a positive weight!!!!"
end
# Convert the weight into price
if weight <= 20
  price = 5
elsif weight > 20 && weight <= 100
  price = 10
else
  price = 20
end

# Print the price
puts "Price is #{price} kr"