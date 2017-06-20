#preliminary

hash = {f: 6, gg: 6, aa: "nope", d: 7}
hash.delete(:aa)
hash

hash.to_a

#excercise 1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

def imi fam
  want = [:sisters, :brothers]
  newfam = []
  want.each do |i|
    w =fam.select { |k, v| k == i}
    p w[i]
    newfam.push(w[i])
  end

  return newfam.flatten
end


#excercise 2

fam2 = {fathers:["greg"],
mothers: ["georgia"]}

def mergeok h1, h2
  p h1.merge(h2)
  puts h1
  puts h2
end


def mergebad h1, h2
  p h1.merge!(h2)
  puts h1
  puts h2
end


#excercise 3
def keys hash
  hash.each {|k, v| puts k}
end


def keys2 hash
  hash.each {|k, v| puts v}
end

def keys3 hash
  hash.each {|k, v| puts k, v}
end

#excercise 4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person[:name]

#excercise 5

def keyfinder hash, val
  if hash.has_value?(val)
    puts "the key is there"
  else
    puts "not there"
  end

end



#excercise 6
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def anagram word1, word2
  word2.each_char do |i|
    unless word1.include?(i)
      return false
    end
  end

  return true
end

def analist array
  narray = []

  array.each do |i|
    minilist = []
    array.each do |v|
      if anagram i, v
        minilist.push v
      end
    end

    if minilist != []
      narray.push minilist
      minilist = []
    end

  end

  narray = narray.uniq!

  narray.each { |i| p i}

end

analist words


#excercise 7
