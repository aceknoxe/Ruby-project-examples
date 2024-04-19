# Ruby program to convert MP3 to Hexadecimal

# Function to convert mp3 to hex
def mp3_to_hex(file_path)
  # Open the file in binary mode and read the content
  file_content = File.open(file_path, 'rb') { |file| file.read }

  # Convert each byte to hexadecimal
  hex_content = file_content.unpack('H*').first

  # Return the hexadecimal content
  hex_content
end

# Usage
file_path = 'path_to_your_mp3_file.mp3'
hex_content = mp3_to_hex(file_path)

# Print the hexadecimal content
puts hex_content
