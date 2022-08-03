def add(a, b)
  # return the result of adding a and b
  return a + b
end

def subtract(a, b)
  # return the result of subtracting b from a
  return a - b
end

def multiply(a, b)
  # return the result of multiplying a times b
  return a * b
end

def divide(a, b)
  # return the result of dividing a by b
  return a / b
end

def remainder(a, b)
  # return the remainder of dividing a by b using the modulo operator
  return a % b
end

def float_division(a, b)
  # return the result of dividing a by b as a float, rather than an integer
  return a.to_f / b
end

def string_to_number(string)
  # return the result of converting a string into an integer
  return string.to_i
end

def even?(number)
  # return true if the number is even (hint: use integer's even? method)
  return number.even?
end

#temp1 = "test"

def odd?(number)
  # return true if the number is odd (hint: use integer's odd? method)
  #TEMPC = "great"
  #puts TEMPC
  #puts temp1
  return number.odd?
end

#puts "Hello World\n"

=begin
MY_CONSTANT = "SUP"
puts "Hello #{MY_CONSTANT}"
MY_CONSTANT = "temp"
=end

#puts "hello there: #{odd?(7)}"

=begin
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 11
end
=end

=begin
x = 0
while x <= 10 do
  puts "x is #{x}"
  x += 1
end
=end

=begin
answer = ""
while answer != "yes" do
  puts "Will you go to prom with me?"
  answer = gets.chomp
end
=end

=begin
p = 10
until p < 0 do
  puts "p is: #{p}"
  p -= 1
end
=end

=begin
for i in 1..5
  puts "i is: #{i}"
end
=end

=begin
6.times do |number|
  puts "num is #{number}"
end
=end

=begin
2.upto(7) do |num|
  puts "count is #{num}"
end


7.downto(2) {|num| puts "num is: #{num}"}
=end

=begin
num_array = [0, 0, 0]

n2 = Array.new(3, 0)

print num_array
print "\n"
print n2
=end

=begin
temp_a = ['a' , 'b' , 'c']

puts temp_a[0]
q = temp_a[3]
puts q.nil?
=end

=begin
str_array = ["This", "is", "a", "small", "array"]

puts str_array.first
print str_array.first(2)
puts "\n"
print "#{str_array.last(2)}" + "\n"
=end

=begin
temp_a = [1, 2]
print temp_a
print "\ntest\n"
q = temp_a.push(3, 4)
print q
puts "\n\narray is now: #{temp_a}"
l = temp_a << 5
print "\nl is #{l}\n"
puts "\n\narray is now: #{temp_a}"
=end

=begin
n1 = [1, 2 ,3]
q = n1 << 5
print q
t = n1.pop(2)
print "\nt is: #{t}\n"
print "list is now: #{n1}"
=end











