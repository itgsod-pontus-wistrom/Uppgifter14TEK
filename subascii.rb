#!/usr/bin/env ruby
 
if ARGV.empty? then
  puts "#{$0} ascii-file base64-source"
end
 
def getb64(file)
  c = file.getc
  if not c then
    return '='.unpack('c*')[0]
  end
  char = [c].pack('c*')
  if char =~ /\n/ then
    return getb64(file)
  end
  c
end

b64 = File.open(ARGV[1])
File.new(ARGV[0]).each_byte do |c|
  char = [c].pack('c*')
  if char =~ /[^ \n]/ then
    c = getb64(b64)
  end
  STDOUT.putc c
end
