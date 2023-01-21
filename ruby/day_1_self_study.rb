puts 'Print the string "Hello, world."'
puts 'Hello, world.'

puts 'For the string "Hello, Ruby.", find the index of the word "Ruby".'
puts "The index of \"Ruby\" in \"Hello, Ruby.\" is #{'Hello, Ruby.'.index('Ruby')}"

puts 'Print your name ten times.'
i = 0
until i == 10
  puts "Josh!"
  i += 1
end

puts 'Print the string "This is sentence number 1," where the number 1 changes from 1 to 10.'
i = 1
until i == 11
  puts "This is sentence number #{i},"
  i += 1
end

puts '...And this ruby program was run from a file!'
