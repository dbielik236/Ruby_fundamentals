def caesar_cipher 

letter_num = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6,
  "g" => 7,
  "h" => 8,
  "i" => 9,
  "j" => 10,
  "k" => 11,
  "l" => 12,
  "m" => 13,
  "n" => 14,
  "o" => 15,
  "p" => 16,
  "q" => 17,
  "r" => 18,
  "s" => 19,
  "t" => 20,
  "u" => 21,
  "v" => 22,
  "w" => 23,
  "x" => 24,
  "y" => 25,
  "z" => 26,
  " " => "space",
  "." => "period",
  "!" => "exclam",
  
}

num_letter = {
  1 => "a",
  2 => "b",
  3 => "c",
  4 => "d",
  5 => "e",
  6 => "f",
  7 => "g",
  8 => "h",
  9 => "i",
  10 => "j",
  11 => "k",
  12 => "l",
  13 => "m",
  14 => "n",
  15 => "o",
  16 => "p",
  17 => "q",
  18 => "r",
  19 => "s",
  20 => "t",
  21 => "u",
  22 => "v",
  23 => "w",
  24 => "x",
  25 => "y",
  26 => "z",
  "space" => " ",
  "period" => ".",
  "exclam" => "!",
}

print "Enter your message: "
user_string = gets.chomp
print "How much would you like to shift? "
number = gets.chomp

number_array = user_string.downcase.split("").map {|character| letter_num[character]}

shifted_array = number_array.map {|each| 
  if each.class==Integer
     each+number.to_i
  else
    each
  end
  }

adjusted_array = shifted_array.map {|each| 
  if each.class==Integer&&each>26
    each-26
  else
    each
  end
  }

print "Here is your coded message: "

shifted_string = adjusted_array.map {|each| num_letter[each]}.join.capitalize
end


p caesar_cipher



def caesar_decipher

letter_num = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6,
  "g" => 7,
  "h" => 8,
  "i" => 9,
  "j" => 10,
  "k" => 11,
  "l" => 12,
  "m" => 13,
  "n" => 14,
  "o" => 15,
  "p" => 16,
  "q" => 17,
  "r" => 18,
  "s" => 19,
  "t" => 20,
  "u" => 21,
  "v" => 22,
  "w" => 23,
  "x" => 24,
  "y" => 25,
  "z" => 26,
  " " => "space",
  "." => "period",
  "!" => "exclam",
  
}

num_letter = {
  1 => "a",
  2 => "b",
  3 => "c",
  4 => "d",
  5 => "e",
  6 => "f",
  7 => "g",
  8 => "h",
  9 => "i",
  10 => "j",
  11 => "k",
  12 => "l",
  13 => "m",
  14 => "n",
  15 => "o",
  16 => "p",
  17 => "q",
  18 => "r",
  19 => "s",
  20 => "t",
  21 => "u",
  22 => "v",
  23 => "w",
  24 => "x",
  25 => "y",
  26 => "z",
  "space" => " ",
  "period" => ".",
  "exclam" => "!",
}

print "\nWhat message would you like to decode? "
user_string = gets.chomp

print "What is the shift? "
number = gets.chomp

number_array = user_string.downcase.split("").map {|character| letter_num[character]}

shifted_array = number_array.map {|each| 
  if each.class==Integer
     each-number.to_i
  else
    each
  end
  }

adjusted_array = shifted_array.map {|each| 
  if each.class==Integer&&each<1
    each+26
  else
    each
  end
  }  

print "Here is your de-coded message: "

shifted_string = adjusted_array.map {|each| num_letter[each]}.join.capitalize
end

p caesar_decipher