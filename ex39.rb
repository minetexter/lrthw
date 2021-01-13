stuff = {'name' => 'Zed', 'age' => 39, 'height' => 6 * 12 + 2}
puts stuff

stuff['city'] = "San Francisco"
puts stuff

stuff.delete('city')
puts stuff

# create a mapping of states to abbreviation

states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA'
}

# create a basic set of states and some cities in them
cities = {
  'CA' => 'San Francisco',
  'FL' => 'Jacksonville'
}

# add some more cities
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "OR State has: #{cities['OR']}"

# puts some states
puts '-' * 10
puts "Florida's abbreviation is: #{states['Florida']}"

# do it by using the state then cities dict
puts '-' * 10
puts "Florida has: #{cities[states['Florida']]}"

# puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
# by default ruby says "nil" when something isn't in there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"