require 'open_project/slack'
require 'uri'
require 'net/http'

# read file #
token_file = File.open("token.txt")
file_data = token_file.readlines.map(&:chomp)
token_file.close

puts file_data

url = URI("http://uvo160utqje15kp85wr.vm.cld.sr:8080/api/v3/work_packages")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["cookie"] = '_open_project_session=13531a3f457c2a50b299cc8956d12738'
request["Authorization"] = 'Barer '+file_data

response = http.request(request)
puts response.read_body