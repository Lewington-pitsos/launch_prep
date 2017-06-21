#excercise 1
words = ["laboratory",
"experiment",
"Pans Labyrinth",
"elaborate",
"polar bear"]

def labchecker array
  array.each do |i|
    if i =~ /lab/
      puts "yup #{i} has lab in it"

    end
  end
end


#excercise 4

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#excercise 1
#excercise 1
#excercise 1
#excercise 1
#excercise 1
#excercise 1
