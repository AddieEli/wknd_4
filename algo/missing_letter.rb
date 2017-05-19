# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  count = 0 
  range.split("").each do |letter|
    count = letter.ord + count 
  end 
    
  first_letter = range[0].ord
  last_letter = range[-1].ord

  range_total = (first_letter..last_letter).sum
  missing = range_total - count 
    if missing == 0
      return nil
  else  
     p missing.chr
   end 
end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end
