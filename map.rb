arr = ['januari', 5, 'Febuari', -4, 'Mars', 0, 'April', 12, 'Maj', 15]
i=0

while i<arr.length
  puts arr[i] + ':' + arr[i + 1].to_s
  i += 2
end

arr2 = [5,-4,0,12,15]

arr2.map! { |temp| (temp*2).to_s }
print arr2

arr3 = ['a',1,'b',4,'c',5]

arr3.map {|data| puts data.is_a? Intege}