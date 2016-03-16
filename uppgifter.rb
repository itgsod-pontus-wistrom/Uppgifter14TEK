a = [1,2,3]
b = [4,5,6]
c= []

i=0
while i < 3
  c << a[i].to_s + b[i].to_s
  i += 1
end

puts c
