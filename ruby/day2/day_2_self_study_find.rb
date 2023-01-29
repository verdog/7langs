# Find:
# • Find out how to access files with and without code blocks.
#   What is the benefit of the code block?

# Open a file with File.open or File.new
f = File.open("words.txt", "r")

# File inherits IO, exposing methods like readlines
lines = f.readlines()
puts "File contents: #{lines}"

# You can use a block after open to keep the parent scope clean. f will equal the
# return value of the block, not the file object. I assume the file will be closed
# after the block returns too, but I don't see any documentation saying that...
first = File.open("words.txt", "r") do |f|
  lines = f.readlines()
  puts "File contents (again): #{lines}"
  lines[0]
end

puts "The block returned \"#{first}\""

# • How would you translate a hash to an array? Can you translate arrays
#   to hashes?
# • Can you iterate through a hash?
hash = { 1 => "one", 2 => "two", 3 => "three" }
puts "#{hash}"

# Can iterate with hash.each
hash.each {|key, value| puts "#{key} => #{value}"}

# Hash to array, a few different ways:
puts "Keys: #{hash.keys}"
puts "Values: #{hash.values}"
puts "Keys and values: #{hash.flatten}"
puts "to_a: #{hash.to_a}"
puts "Use Array.to_h to turn the output of to_a back into a hash"
puts "to_h: #{hash.to_a.to_h}"

# • You can use Ruby arrays as stacks. What other common data structures
#   do arrays support?
array = [1, 2, 3, 4, 5]

puts
puts "As stack: #{array}"
puts "pop => #{array.pop}, #{array}"
puts "pop => #{array.pop}, #{array}"
puts "pop => #{array.pop}, #{array}"

puts "push(3) => #{array.push(3)}"
puts "push(4) => #{array.push(4)}"
puts "push(5) => #{array.push(5)}"

puts
puts "As queue: #{array}"
puts "shift => #{array.shift}, #{array}"
puts "shift => #{array.shift}, #{array}"
puts "shift => #{array.shift}, #{array}"
puts "append(1) => #{array.append(1)}"
puts "append(2) => #{array.append(2)}"
puts "append(3) => #{array.append(3)}"
puts "shift => #{array.shift}, #{array}"
puts "shift => #{array.shift}, #{array}"
puts "append(4) => #{array.append(4)}"
puts "append(5) => #{array.append(5)}"

puts
puts "As set: #{array}"

# Might be more... linked lists? sets?
