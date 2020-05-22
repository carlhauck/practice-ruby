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

# 2.times do
#   puts
#   puts "Enter person #{index}'s first name:"
#   first_name = gets.chomp
#   puts
#   puts "Enter person #{index}'s last name:"
#   last_name = gets.chomp
#   puts
#   puts "Enter person #{index}'s email:"
#   email = gets.chomp
#   while email.include?("@") == false || email.end_with?(".com") == false
#     puts
#     puts "Re-enter email. Make sure it includes an '@' and ends with '.com'."
#     email = gets.chomp
#   end
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


# Bonus.a

# puts
# puts "Enter an account number to access user information:"
# input_account = gets.chomp.to_i

# index = 0
# while index < users.length + 1
#   if index == users.length
#     puts
#     puts "Account not found."
#     break
#   elsif input_account == users[index][:account_num]
#     puts
#     puts "USER #{index + 1}"
#     puts "FIRST NAME: #{users[index][:first_name]}"
#     puts "LAST NAME: #{users[index][:last_name]}"
#     puts "EMAIL: #{users[index][:email]}"
#     puts "ACCT #: #{users[index][:account_num]}"
#     break
#   else
#     index += 1
#   end
# end


# Bonus.b

class Card
  def initialize(trivia_data_sample)
    @question = trivia_data_sample[0]
    @answer = trivia_data_sample[1]
  end

  def question
    @question
  end

  def answer
    @answer
  end
end

class Deck
  def initialize(trivia_data)
    @trivia_data = trivia_data.to_a
  end

  def remaining_cards
    @trivia_data.length
  end

  def draw_card
    @trivia_data.shuffle!
    Card.new(@trivia_data.shift)
  end
end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True",
  "Multiple choice (type letter): Which of the following is a real prescription drug?\na. Perkelpazine\nb. Omeprazole\nc. Listepitrine\nd. Caltohira" => "b",
  "Enter the name of this animal: \n ___            ___   \n/   \\          /   \\\n\\_   \\        /  __/\n _\\   \\      /  /__ \n \\___  \\____/   __/ \n     \\_       _/    \n       | @ @  \\_    \n       |            \n     _/     /\\      \n    /o)  (o/\\ \\_    \n    \\_____/ /       \n      \\____/        " => "moose"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

puts "Do you want one chance to retry trivia questions that you get wrong? Enter 'Y' or 'N':"
retry_triv = gets.chomp.downcase

correct_count = 0
incorrect_count = 0
while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts
  puts card.question
  user_answer = gets.chomp
  attempt = 1
  while attempt <= 2
    if user_answer.downcase == card.answer.downcase
      puts
      puts "Correct!"
      correct_count += 1
      break
    elsif attempt == 1 && retry_triv == "y"
      puts
      puts "Incorrect! Try again:"
      user_answer = gets.chomp
      attempt +=1
    else
      puts
      puts "Incorrect!"
      incorrect_count += 1
      break
    end
  end
end

score = 100 * correct_count / (correct_count + incorrect_count)
puts
puts "You got #{correct_count} questions right and #{incorrect_count} questions wrong! Your score: #{score}%"