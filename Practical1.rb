# Перевірка, чи був переданий аргумент
if ARGV.length != 2
  puts "Введіть два аргументи: ваш вибір та вибір комп'ютера (наприклад, 'камінь папір')"
  exit
end

# Отримання аргументів з командного рядка
player_choice = ARGV[0].downcase
computer_choice = ARGV[1].downcase

# Перевірка правильності введених аргументів
valid_choices = ["rock", "scissors", "paper"]
unless valid_choices.include?(player_choice) && valid_choices.include?(computer_choice)
  puts "Пожалуйста, виберіть один із наступних варіантів: камінь, ножиці, папір"
  exit
end

# Визначення результату гри
if player_choice == computer_choice
  puts "Нічия!"
elsif (player_choice == "rock" && computer_choice == "scissors") ||
  (player_choice == "scissors" && computer_choice == "paper") ||
  (player_choice == "paper" && computer_choice == "rock")
  puts "Ви виграли!"
else
  puts "Ви програли!"
end
