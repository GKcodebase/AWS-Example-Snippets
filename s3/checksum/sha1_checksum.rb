require 'openssl'
require 'base64'

# Function to calculate SHA-1 checksum and return Base64 encoded value
def generate_sha1_checksum(file_path)
  # Open the file and calculate SHA-1 checksum
  sha1 = OpenSSL::Digest::SHA1.new

  File.open(file_path, 'rb') do |file|
    # Update SHA1 digest with the file content (binary mode)
    while chunk = file.read(8192)  # Read in chunks for memory efficiency
      sha1.update(chunk)
    end
  end

  # Get the raw SHA1 hash (binary)
  sha1_hash = sha1.digest

  # Base64 encode the raw SHA1 hash to match the required format
  base64_encoded_sha1 = Base64.encode64(sha1_hash).strip

  # Return the Base64 encoded checksum
  base64_encoded_sha1
end

# Example usage:
file_path = 'myfile.txt'
checksum = generate_sha1_checksum(file_path)
puts "Base64 Encoded SHA-1 Checksum: #{checksum}"