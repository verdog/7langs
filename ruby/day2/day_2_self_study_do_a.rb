# • Print the contents of an array of sixteen numbers, four numbers at a
# time, using just each. Now, do the same with each_slice in Enumerable.

array = (1..16).to_a

buf = []
array.each do |i|
  buf.append(i)
  if buf.size == 4 then
    puts "#{buf}"
    buf.clear()
  end
end

puts
array.each_slice(4) {|slc| puts "#{slc}"}
