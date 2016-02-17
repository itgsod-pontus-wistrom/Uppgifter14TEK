def bankomat
  puts "Hur mycket pengar har du?"
  peng = gets.chomp.to_i
  puts "Hur mycket kostar det?"
  kost = gets.chomp.to_i
  tarut = 0



  if peng < kost
    diff = kost - peng
    hundratal = (diff/100.0).to_i
    tarut = (hundratal + 1)*100
    puts "Ta ut #{tarut}"
  else
    puts "Ta ut 0kr"
  end

  puts "Efter köpet återsår #{peng + tarut - kost}"
end
bankomat