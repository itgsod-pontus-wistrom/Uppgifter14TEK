
#puts w + ' as index ' + id.to_s

#puts 'Working keys?'
#keyboard = gets

=begin
for word in words
    c,i = 0,0
    while i < keyboard.length
      char = keyboard[i]
      if word.include?(char)
        c += 1
      end
      i += 1
    end
    if c < keyboard.length
      next
    elsif c == keyboard.length
      puts word
    end
end
=end


def findWord(seq)
  seq = /^[#{seq}]+$/

  words = IO.readlines('/usr/share/dict/words').keep_if do |word|
    word =~ seq
  end

  words.sort! do |x,y|
    y.length <=> x.length
  end

  words[0..words.length]
end


def findWord2(seq)
  words = File.readlines('/usr/share/dict/words')
  puts words.length



  # Loop on words
  j=0
  while j < words.length
    word = words[j].chomp
    wrong_word = false

    # Loop on each character in the word
    k = 0
    while k < word.length
      charw = word[k]

      if seq.include?(charw) == false
        wrong_word = true
        break
      end

      k += 1
    end
    if wrong_word == false
      puts word
    end
    j += 1
  end

end
puts findWord('sandr')