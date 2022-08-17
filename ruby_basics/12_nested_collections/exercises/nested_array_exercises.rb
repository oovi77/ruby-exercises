def blank_seating_chart(number_of_rows, seats_per_row)
  # return a 2d array to represent a seating chart that contains
  # number_of_rows nested arrays, each with seats_per_row entries of nil to
  # represent that each seat is empty.

  # Example: blank_seating_chart(2, 3) should return:
  # [
  #   [nil, nil, nil],
  #   [nil, nil, nil]
  # ]

  # NOTE: if one of the nested arrays is changed, the others should **not**
  # change with it
  Array.new (number_of_rows) {Array.new(seats_per_row)}
end

#temp = blank_seating_chart(2, 3)
#p temp

def add_seat_to_row(chart, row_index, seat_to_add)
  # take a chart (2d array)  and add seat_to_add to the end of the row that is
  # at row_index index of the chart, then return the chart
  chart[row_index].push(seat_to_add)
  chart
end

def add_another_row(chart, row_to_add)
  # take a chart and add row_to_add to the end of the chart,
  # then return the chart.
  chart << row_to_add
  chart
end

def delete_seat_from_row(chart, row_index, seat_index)
  # take a chart and delete the seat at seat_index of the row at row_index of
  # the chart, then return the chart

  # Hint: explore the ruby docs to find a method for deleting from an array!
  chart[row_index].delete_at(seat_index)
  chart
end

def delete_row_from_chart(chart, row_index)
  # take a chart and delete the row at row_index of the chart,
  # then return the chart
  chart.delete_at(row_index)
  chart
end

def count_empty_seats(chart)
  # take a chart and return the number of empty (nil) seats in it
  count = 0;
  # NOTE: `chart` should **not** be mutated
  chart.each do |row|
    row.each do |column|
      if (column == nil)
       count+= 1
      end
      #puts "col is: #{column}"
    end
  end

  return count
end

#t1 = [[nil, 2, 3, 4, nil],[0, 0, 0],[nil, nil, nil]]
#t1 = [[1,2,3],[4,nil,nil,6]]

#p count_empty_seats(t1)


def find_favorite(array_of_hash_objects)
  # take an array_of_hash_objects and return the hash which has the key/value
  # pair :is_my_favorite? => true. If no hash returns the value true to the key
  # :is_my_favorite? it should return nil

  # array_of_hash_objects will look something like this:
  # [
  #   { name: 'Ruby', is_my_favorite?: true },
  #   { name: 'JavaScript', is_my_favorite?: false },
  #   { name: 'HTML', is_my_favorite?: false }
  # ]

  # TIP: there will only be a maximum of one hash in the array that will
  # return true to the :is_my_favorite? key
  array_of_hash_objects.each do |name|
    if name[:is_my_favorite?] == true
      return name
    end
  end
  return nil

end

=begin
t1 = [
     { name: 'Ruby', is_my_favorite?: true },
     { name: 'JavaScript', is_my_favorite?: false },
    { name: 'HTML', is_my_favorite?: false }
   ]
p find_favorite(t1)
=end


=begin
temp1 = Array.new(3, 7)
p temp1 #[7, 7, 7]
temp1[0] = 'b'
temp1[1] = 6
p temp1 #["b", 6, 7]
=end

=begin
temp2 = Array.new(3, "b")
p temp2
temp2[0] = 1
p temp2
=end

=begin
mutable = Array.new(3, Array.new(2))
p mutable
mutable[0][0] = 2
p mutable
=end

=begin
immutable = Array.new(3) {Array.new(2, "b")}
p immutable
immutable[0][0] = 1000
p immutable
=end

=begin
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
]

test_scores << [100, 99, 98, 97]
test_scores[0].push(77)
test_scores[0] << 99
p test_scores
=end

=begin
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row: #{row_index} Column: #{column_index} = #{teacher}"
  end
end
=end

=begin
vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

#p vehicles[:alice][:year]
vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}
#p vehicles
#vehicles[:dave][:color] = "red"
#p vehicles
vehicles.delete(:blake)

#temp = vehicles.select {|name, data| data[:year] >= 2020}
temp = vehicles.map {|name, data| name if data[:year] >= 2020}.compact
p temp
=end

