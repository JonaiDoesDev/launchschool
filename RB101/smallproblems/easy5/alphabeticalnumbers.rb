ALPHANUMERIC = {
  0 => "zero",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen"
}


def alphabetic_number_sort(array)
  english_numbers = array.map do |number|
   if ALPHANUMERIC.key?(number)
    ALPHANUMERIC[number]
   end
  end
  
   english_numbers.sort.map do |num|
      ALPHANUMERIC.key(num)
  end
end




=begin
Problem(understanding)
input: array of integers between 0 - 19
output: ARRAY of the integers sorted based on the English words for each number

Example: 
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

eight, eightteen, eleven, fifteen, five etc...

Data Strucutres:
Array
Possibly a hash

Algo:
1. pair up integer with its english counterpart
2. sort the word numbers alphabetically
3. output array of numbers



=end
