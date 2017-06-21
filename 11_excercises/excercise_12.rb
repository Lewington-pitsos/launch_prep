contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data.each do |i|
  person = i[0][0..2]
  contacts.each do |k, v|
    if k.downcase.include?(person)
      contacts[k] = {email: i[0], adress:i[1], phone: i[2]}

    end
  end
end

p contacts

#excercise 13

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

#excercise 14: I misunderstood excercise 12 and did that (i think)
