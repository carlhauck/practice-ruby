# 1a

# foods = []
# puts "Enter your 5 favorite foods one at a time."
# 5.times do
#   puts "Enter a food:"
#   food = gets.chomp
#   foods << food
# end
# p foods

# 1b

# foods.each do |food|
#   puts "I love #{food}."
# end

# 1c

# num = 1
# foods.each do |food|
#   puts "#{num}. #{food}."
#   num += 1
# end


# 2a

# count = 0
# while count < 11
#   puts count
#   count += 1
# end

# 2b

# sam_recipes = ["cookies", "chicken stew", "grilled ribeye", "mixed veggies", "chili", "vindaloo", "fried chicken", "chickpea salad", "roasted donkey", "mystery stew", "pizza"]
# sally_languages = ["French", "German", "English", "Mandarin", "Spanish", "Italian"]

# if sam_recipes.length > 10 && sally_languages.length > 5
#   puts "They should date!"
# else
#   puts "They shouldn't date :("
# end

# if sam_recipes.include?("crepes") || sally_languages.include?("French")
#   puts "They should marry!"
# else
#   puts "They shouldn't marry :("
# end


# 3a & 3b

# users = []
# index = 1

# 5.times do
#   puts "Enter person #{index}'s first name:"
#   first_name = gets.chomp
#   puts "Enter person #{index}'s last name:"
#   last_name = gets.chomp
#   puts "Enter person #{index}'s email:"
#   email = gets.chomp
#   user_hash = {first_name: first_name, last_name: last_name, email: email, account_num: rand(10 ** 10)}
#   users << user_hash
#   index +=1
# end

# 3c

# index = 0
# while index < users.length
#   puts
#   puts "USER #{index + 1}"
#   puts "FIRST NAME: #{users[index][:first_name]}"
#   puts "LAST NAME: #{users[index][:last_name]}"
#   puts "EMAIL: #{users[index][:email]}"
#   puts "ACCT #: #{users[index][:account_num]}"
#   index += 1
# end

# OR
# users.each do |user|
#   puts
#   puts "FIRST NAME: #{user[:first_name]}"
#   puts "LAST NAME: #{user[:last_name]}"
#   puts "EMAIL: #{user[:email]}"
#   puts "ACCT #: #{user[:account_num]}"
# end


# Question 4

# puts "How many students are in your class?"
# student_count = gets.chomp.to_i

# students = []
# index = 1
# student_count.times do
#   puts
#   puts "Enter name of student #{index}:"
#   student = gets.chomp
#   students << student
#   index += 1
# end

# students.shuffle!

# index = 1

# if students.length.odd?
#   puts "Group #{index}: #{students.shift(3)}"
#   index +=1
# end

# (students.length / 2).times do
#   puts "Group #{index}: #{students.shift(2)}"
#   index +=1
# end


# Bonus

