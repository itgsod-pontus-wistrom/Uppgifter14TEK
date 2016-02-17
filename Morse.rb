CODE = {'A'=> '.-',     'B'=> '-...',   'C'=> '-.-.',
        'D'=> '-..',    'E'=> '.',      'F'=> '..-.',
        'G'=> '--.',    'H'=> '....',   'I'=> '..',
        'J'=> '.---',   'K'=> '-.-',    'L'=> '.-..',
        'M'=> '--',     'N'=> '-.',     'O'=> '---',
        'P'=> '.--.',   'Q'=> '--.-',   'R'=> '.-.',
        'S'=> '...',    'T'=> '-',      'U'=> '..-',
        'V'=> '...-',   'W'=> '.--',    'X'=> '-..-',
        'Y'=> '-.--',   'Z'=> '--..',
        '0'=> '-----',  '1'=> '.----',  '2'=> '..---',
        '3'=> '...--',  '4'=> '....-',  '5'=> '.....',
        '6'=> '-....',  '7'=> '--...',  '8'=> '---..',
        '9'=> '----.'
}

str = 'Ruby is more elegant than Python'

def translate(str,key)
  # Go through str starting from str[0] until str[str.length] = str[-1]
  result = []
  i=0
  while i < str.length

    # Replace str[i] with the corresponding value in key

    str = str.upcase
    result << key[str[i]]
    i += 1
  end
  result
end

result = translate(str,CODE)
print result.join
puts
#`say "#{result.join}"`
