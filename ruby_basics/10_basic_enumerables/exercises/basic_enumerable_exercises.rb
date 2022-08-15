def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  inventory_list.each {|k, v| puts "#{k}, quantity: #{v}"}
end

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
  guesses.each_with_index {|val, index| puts "Guess ##{index+1} is #{val}" }
end

#temp = ["cookies", "cake", "ice cream"]
#p display_guess_order(temp)

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  numbers.map do |num|
    if num < 0
      num = num * - 1
    else
      num
    end
  end
end

#temp = [-1, 0, 42, -22]
#p find_absolute_values(temp)

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
  inventory_list.select do |k, v|
    v < 4
  end
end

#temp = {boots: 4, arrows: 5, swords: 6, maces: 2, lances: 1, anime: 56}
#p find_low_inventory(temp)

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
  word_list.reduce(Hash.new) do |acc, word|
    acc[word] = word.length
    acc
  end
end

#temp = ["num", "twitch" ,"awesomesauce"]
#p find_word_lengths(temp)



=begin
for i in 0..5
  puts "#{i} zombies incoming!"
end
=end

#friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
#invited_list = []


=begin
for i in 0..(friends.length-1)
  if friends[i] != 'Brian'
    invited_list.push(friends[i])
  end
end
=end

=begin
for friend in friends do
  if friend != 'Brian'
    invited_list.push(friend)
  end
end


p invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]
=end

=begin
p friends.select {|friend| friend != 'Brian'}
p friends
p friends.reject {|friend| friend == 'Brian'}
=end

=begin
friends.each {|friend| puts "Hello, #{friend}!"}

friends.each do |friend|
  puts "Goodbye... #{friend}"
end
=end

=begin
my_hash = { "one" => 1, "two" => 2 }

#temp = my_hash.each {|key, value| puts "#{key} is #{value}"}

temp = my_hash.each {|pair| puts "the pair is: #{pair}"}

puts "temp is: #{temp}"
=end

=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

temp = friends.each { |friend| friend.upcase }

p friends
p temp
=end

#fruits = ["apple", "banana", "strawberry", "pineapple"]
#fruits.each_with_index {|val, index| puts val if index.even? }

#friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']


#temp = friends.map {|friend| friend.upcase }
#p temp

=begin
my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

temp = my_order.map do |item|
  item.gsub('medium', 'extra large')
end

puts temp
p temp
#p my_order
=end

#my_numbers = [5, 6, 7, 8]
#sum = 0

=begin
my_numbers.each do |num|
  sum = sum + num
end
p sum
=end

=begin
temp = my_numbers.reduce { |sum, number| sum + number}
p temp

my_hash = Hash.new(5)
p my_hash
my_hash["pizza"] = my_hash["pizza"] + 1
p my_hash
=end

=begin
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

temp = votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  p "result is: #{result}"
  result
end

p temp
=end

=begin
my_numbers = [5, 6, 7, 8]

my_numbers.reduce do |sum, num|
  p "sum is: #{sum}"
  sum = sum + num
  #p "hello"
end
=end

