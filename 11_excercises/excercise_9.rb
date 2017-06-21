h = {a:1, b:2, c:3, d:4}

puts h[:b]

h.merge!( {e:5})

p h

h.select! {|k, v| v > 3.5}

p h
