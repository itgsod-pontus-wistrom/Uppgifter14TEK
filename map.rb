arr = ['januari', 5, 'Febuari', -4, 'Mars', 0, 'April', 12, 'Maj', 15]
i=0

while i<arr.length
  puts arr[i] + ':' + arr[i + 1].to_s
  i += 2
end