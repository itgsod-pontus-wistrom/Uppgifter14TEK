require 'benchmark'
#include Benchmark

print "Loopar\n------\n"

for i in 1..10 do
  print i, " "
end

puts

for i in 1..10 do print "#{i} ";end

puts

n=10_000_000
puts Benchmark.measure{ (1..n).each { |i| i+1}   }

print "Arrays\n------\n"
a=[1,2,3,4,5,6,7,8,9]
print a
puts
puts a[3]
print a.map {|val| val==3}
puts

(1..10).each {|v| if v % 2 == 0; print "#{v} " end}

puts
n=10_000_000
a=[]
i=0

# puts Benchmark.measure{for i in 1..n do a[i]=1;end}
# puts Benchmark.measure{(1..n).each {a[i]=1}}
# puts Benchmark.measure{while i<=n; a[i]=1;i+=1;end}
# i=0
# puts Benchmark.measure{begin a[i]=1;i+=1;end while i<=n}
# puts Benchmark.measure{n.times {|i| a[i]=1}}
# puts Benchmark.measure{1.upto(n) {|i| a[i]=1}}
# puts Benchmark.measure{a.map {|i| a[i]=1}}

puts

print "Fetch\n------\n"
arr = ['a', 'b', 'c', 'd', 'e', 'f']
puts arr.fetch(3)
puts arr.fetch(100, "oops") #=> "oops"

print "Take\n----\n"
print arr.take(2)
puts
print "Drop\n----\n"
print arr.drop(3)
puts
print "Push\n----\n"
print arr.push('g')
puts
print "Pop\n----\n"
print arr.pop
puts
print "Delete\n------\n"
puts arr.delete('c')
print arr
puts
arr = [1, 2, 3, 4, 5]
print arr
puts
arr.each { |a| print a -= 10, " " }
puts
arr.map { |a| 2*a }   #=> [2, 4, 6, 8, 10]
print arr             #=> [1, 2, 3, 4, 5]
puts
arr.map! { |a| a**2 } #=> [1, 4, 9, 16, 25]
print arr
puts
a = Array.new(3,Array.new(2,0))
print a
puts


print "\nHashes\n------\n"

h=Hash.new
h={}

h={'A':92834,'B':343,'C':777,'D':983}
puts h.length
puts h.has_value?(343)
puts h.has_key?('E')
puts h.any?

i=1

#puts Benchmark.measure{while i<=n;h[i.to_s]=Math.sqrt(i.to_f);i+=1;end}
puts h.length
puts h['10000']
puts h.any?

puts Benchmark.measure{for key in h.keys;h[key]=nil;end}
h.clear

puts h.any?


#h.any?
puts

hast = {'twelve':12,'ten':10,'one':1,'two':2}
puts hast[:ten]