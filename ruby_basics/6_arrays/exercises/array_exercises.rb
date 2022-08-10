def nil_array(number)
  # return an array containing `nil` the given number of times
  return Array.new(number)
end

#print nil_array(5)

def first_element(array)
  # return the first element of the array
  return array.first
end

def third_element(array)
  # return the third element of the array
  return array[2]
end

def last_three_elements(array)
  # return the last 3 elements of the array
  return array.last(3)
end

def add_element(array)
  # add an element (of any value) to the array
  return array << 1
end

def remove_last_element(array)
  # Step 1: remove the last element from the array

  # Step 2: return the array (because Step 1 returns the value of the element removed)
  array.pop
  return array

end

def remove_first_three_elements(array)
  # Step 1: remove the first three elements

  # Step 2: return the array (because Step 1 returns the values of the elements removed)
  array.shift(3)
  return array
end

def array_concatenation(original, additional)
  # return an array adding the original and additional array together
  return original.concat(additional)
end

def array_difference(original, comparison)
  # return an array of elements from the original array that are not in the comparison array
  return original - comparison
end

def empty_array?(array)
  # return true if the array is empty
  return array.empty?
end

def reverse(array)
  # return the reverse of the array
  return array.reverse
end

def array_length(array)
  # return the length of the array
  return array.length
end

def include?(array, value)
  # return true if the array includes the value
  return array.include?(value)
end

def join(array, separator)
  # return the result of joining the array with the separator
  return array.join(separator)
end

=begin
puts "hello"

a = [1, 2, 3]
temp = a.clear
puts "a is: #{a.empty?}"
puts "temp is: #{temp}"
puts "are they equal #{temp == a}"
=end

=begin
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

puts shoes["summer"]
temp = shoes.fetch("hicking", "hicking boots")
puts "temp is #{temp}"
puts "shoes is: #{shoes}"
=end

=begin
person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end
=end

=begin
def greeting (name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Sam", {age: 62, city: "New York City"})
greeting("Jim", age: 62, city: "New York City")
=end

=begin
name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}

name_and_age.keys.each do |k|
  puts "key is: #{k}"
end
=end

=begin

=end

=begin
family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}
=end



=begin
immediateFamily = []
temp = []

immediateFamily = family.select do |k , v| (k == :sisters || k == :brothers)
end

immediateFamily.each do |key, value|
  temp += value
end

print temp
=end


=begin
temp1 = []

family.each do |key, value|
  if (key == :brothers || key == :sisters) 
    temp1 += value
  end
end

print temp1
=end

=begin
immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr
=end

#name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}

=begin
name_and_age.each do |k, v|
  puts "key is: #{k} , value is: #{v}"
end
=end

# name_and_age.each {|k, v| puts "key iss: #{k} and value is: #{v}"}

=begin
def find_v (hash, val)
  return hash.values.include?(val)
end

puts find_v(name_and_age, 31)
puts find_v(name_and_age, 7)
=end
