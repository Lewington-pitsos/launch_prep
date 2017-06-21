a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

n = []
a.each do |i|
  q = i.split(' ')
  q.each do |w|
    n << w
  end
end

p n
