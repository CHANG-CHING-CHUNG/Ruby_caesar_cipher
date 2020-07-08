def caesar_cipher(inputstr, shift)
  num = shift % 26;
  puts num
  result = '';
  inputstr.each_char { |str|
  if str.ord >= 65 && str.ord <= 90
   newChrNum = str.ord + num
   if newChrNum > 90
     newChrNum = newChrNum - 26
     newChr = newChrNum.chr
     result = result + newChr
   elsif newChrNum < 90
     newChr = newChrNum.chr
     result = result + newChr
   end
  elsif str.ord >= 97 && str.ord <= 122
   newChrNum = str.ord + num
   if newChrNum > 122
     newChrNum = newChrNum - 26
     newChr = newChrNum.chr
     result = result + newChr
   elsif newChrNum < 122
     newChr = newChrNum.chr
     result = result + newChr
   end
  else 
   result = result + str
  end
  }
  return result;
 end
 
 p caesar_cipher("What a string!", 5)
