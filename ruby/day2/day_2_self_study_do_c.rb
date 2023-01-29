# Write a simple grep that will print the lines of a file having any occur
# rences of a phrase anywhere in that line. You will need to do a simple
# regular expression match and read lines from a file. (This is surprisingly
# simple in Ruby.) If you want, include line numbers.

if ARGV.size != 2 then
  puts "Usage: rgrep 'phrase' 'filename'"
  exit
end

phrase = ARGV[0]
filename = ARGV[1]

File.open(filename, "r") do |f|
  line_num = 1
  f.each do |line|
    if Regexp.new(phrase) =~ line then
      puts "Match on line #{line_num}: #{line}"
    end
    line_num += 1
  end
end
