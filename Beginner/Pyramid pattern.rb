'''
here is a simple Ruby program that prints a star (*) pattern in the shape of a pyramid
    *
   ***
  *****
 *******
*********
'''




def print_tree(height)
  height.times do |i|
    spaces = ' ' * (height - i - 1)
    stars = '*' * (2 * i + 1)
    puts spaces + stars
  end
end

# Call the function with the desired tree height
print_tree(5)
