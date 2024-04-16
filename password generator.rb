def generate_random_password(length)
  characters = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
  shuffled_characters = characters.shuffle
  password = (0...length).map { shuffled_characters[rand(shuffled_characters.length)] }.join
  return password
end

puts "Enter the length of the password:"
length = gets.chomp.to_i

if length > 0
  puts "Randomly generated password of length #{length}:"
  puts generate_random_password(length)
else
  puts "Invalid input. Please enter a valid length."
end
