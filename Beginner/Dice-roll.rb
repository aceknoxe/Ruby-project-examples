'''simple Ruby program that simulates the roll of a dice'''

def roll_dice
  rand(1..6)
end

# Call the function to roll the dice
puts "You rolled a #{roll_dice}!"
