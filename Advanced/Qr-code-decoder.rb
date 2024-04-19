# qr code decoder
'''
Please note that you need to have the rqrcode and chunky_png gems installed in your Ruby environment. You can install them using the following commands:

gem install rqrcode
gem install chunky_png
'''




require 'rqrcode'
require 'chunky_png'

def decode_qr_code(image_path)
  # Load the image
  image = ChunkyPNG::Image.from_file(image_path)

  # Convert the image to binary (black and white)
  binary_image = []
  image.height.times do |y|
    row = []
    image.row(y).each do |pixel|
      # If the pixel is closer to white than black, it's a 0, otherwise it's a 1
      row << (ChunkyPNG::Color.grayscale_teint(pixel) < 128 ? 0 : 1)
    end
    binary_image << row
  end

  # Decode the QR code
  qr_code = RQRCode::QRCode.decode(binary_image)

  # Return the decoded text
  qr_code.to_s
end

# Usage
puts decode_qr_code('path_to_your_qr_code_image.png')
