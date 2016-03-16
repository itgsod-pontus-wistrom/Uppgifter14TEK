#Uppgift 1
a = [1,2,3]
b = [4,5,6]
c= []

i = 0
while i < a.length
  c << a[i]*10 + b[i]
  i += 1
end

p c

#Uppgift 2

a = [1,2]

def switch(a,b)
  arr = []
  arr[0] = b
  arr[1] = a
  return arr
end

p switch(a[0],a[1])


#Uppgift 3

a = [1,2,3,4]

def rotate()

end

p rotate()