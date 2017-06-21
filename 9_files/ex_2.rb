d = Dir.new(".")
arr = []
d.each do |f|
  if File.extname(f) == ".txt"
    arr << f
  else
    puts f + " has the wrong extension"

  end

end

puts arr
