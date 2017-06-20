#Excercise 2
def upmaker str
  if !(str.length > 10)
    return nil
  else
    return str.upcase
  end
end


puts upmaker "georgeeeeeeeeeeeeeeeeeeeeee"
#Excercise 3

def numb
  puts "numver plz"
  num = gets.chomp.to_i
  case
  when num < 51
    puts "< 51"
  when num > 50 && num < 100
    puts "between 51 and 100"
  else
    puts "100"

  end
end

numb
#Excercise 1
#Excercise 1
#Excercise 1
#Excercise 1
