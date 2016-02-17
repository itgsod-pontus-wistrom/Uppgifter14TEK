key = {'a'=>'n', 'b'=>'o', 'c'=>'p', 'd'=>'q', 'e'=>'r', 'f'=>'s', 'g'=>'t',
       'h'=>'u', 'i'=>'v', 'j'=>'w', 'k'=>'x', 'l'=>'y', 'm'=>'z', 'n'=>'a', 'o'=>'b',
       'p'=>'c', 'q'=>'d', 'r'=>'e', 's'=>'f', 't'=>'g', 'u'=>'h', 'v'=>'i', 'w'=>'j',
       'x'=>'k','y'=>'l', 'z'=>'m', 'A'=>'N', 'B'=>'O', 'C'=>'P', 'D'=>'Q', 'E'=>'R',
       'F'=>'S', 'G'=>'T', 'H'=>'U', 'I'=>'V', 'J'=>'W', 'K'=>'X', 'L'=>'Y', 'M'=>'Z',
       'N'=>'A', 'O'=>'B', 'P'=>'C', 'Q'=>'D', 'R'=>'E', 'S'=>'F', 'T'=>'G', 'U'=>'H',
       'V'=>'I', 'W'=>'J', 'X'=>'K', 'Y'=>'L', 'Z'=>'M', ' ' => ' '}


str = 'Pnrfne pvcure? V zhpu cersre Pnrfne fnynq!'

def translate(str,key)
  # Go through str starting from str[0] until str[str.length] = str[-1]

  i=0
  while i < str.length

    # Replace str[i] with the corresponding value in key
    # And print it

    print key[str[i]]
    i += 1
  end

end

translate(str,key)

