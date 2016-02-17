def multabel(tal)

# Do a loop on every row
r = 0
while r < tal
# Do a loop on every column
  c = 0
  while c < tal
    #print "(#{r},#{c})"
    print "#{(r+1)*(c+1)}\t"
    c += 1
  end
  print "\n"
  r += 1
  # Print each row

end
end

multabel(33)





