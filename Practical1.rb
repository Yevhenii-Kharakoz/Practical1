# Перевірка, чи був переданий аргумент
if ARGV.length != 2
  puts "Enter two arguments: your choice and the computer's choice (ex. 'rock paper')"
  exit
end

# Отримання аргументів з командного рядка
player_choice = ARGV[0].downcase
computer_choice = ARGV[1].downcase

# Перевірка правильності введених аргументів
valid_choices = ["rock", "scissors", "paper"]
unless valid_choices.include?(player_choice) && valid_choices.include?(computer_choice)
  puts "Please choose one of the following options: rock, scissors, paper"
  exit
end

# Визначення результату гри
if player_choice == computer_choice
  puts "Draw!"
elsif (player_choice == "rock" && computer_choice == "scissors") ||
  (player_choice == "scissors" && computer_choice == "paper") ||
  (player_choice == "paper" && computer_choice == "rock")
  puts "You win!"
else
  puts "You lost!"
end
