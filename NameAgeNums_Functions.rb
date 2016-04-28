def name
  puts "What is your name?"
  $name_input = gets.chomp
end

def age
  puts "How old are you?"
  $age_input = gets.chomp.to_i
end

def nums
  puts "What are your three favorite numbers?"
  $fav_nums = []
  3.times do
  number = gets.chomp.to_i
  $fav_nums << number
end
  $fav_nums
end

def years_from_100
  if $age_input == 100
    puts  "You are 100 years old! Congratulations!!!"
  elsif $age_input < 100
    puts  "You only have #{100-$age_input} until you 100 years old!"
  else 
    puts  "In just #{123 - $age_input} short years, You will be the oldest living person ever!"
  end
end 

def compare_sum_and_age
  if $age_input == $fav_nums.inject(:+)
    puts  "  The sum of your 3 favorite numbers is exactly the same as your age!"
  elsif $age_input < $fav_nums.inject(:+)
    puts  "  Your age is #{$fav_nums.inject(:+) - $age_input} less than the sum of your three favorite numbers."
  else 
    puts  "  Your age is #{$age_input - $fav_nums.inject(:+)} more than the sum of your three favorite numbers."
  end
end

def compare_sum_and_age
  if $age_input == $fav_nums.inject(:+)
    puts  "  This sum is exactly the same as your age!"
  elsif $age_input > $fav_nums.inject(:+)
    puts  "  This is #{$age_input - $fav_nums.inject(:+)} less than your age."
  else 
    puts  "  This is #{$fav_nums.inject(:+) - $age_input} more than your age."
  end
end

name
welcome = "Welcome #{$name_input}!"
puts welcome
age
years_from_100
nums
sum_of_favs = "The sum of your three favorite numbers are #{$fav_nums[0] + $fav_nums[1] + $fav_nums[2]}."
puts sum_of_favs

puts """
  #{$name_input},\n
  The sum of #{$fav_nums[0]}, #{$fav_nums[1]} and #{$fav_nums[2]} is #{$fav_nums.inject(:+)}.\n
"""

#puts $age_input
#puts $fav_nums.inject(:+)
puts compare_sum_and_age


#puts $name_input.class
#puts $age_input.class
#print $fav_nums.class
puts "\n "
