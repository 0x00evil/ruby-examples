require 'net/http'

url = URI.parse("http://www.scse.hebut.edu.cn/wp-login.php")

def write_file(str)
  File.open('/path/to/save/the/result','w') do |file|
    file.puts str
  end
end

Net::HTTP.start(url.host,url.port) do |http|
  req = Net::HTTP::Post.new(url.path)
  req.set_form_data({ 'log' => 'fuck','pwd' => 'fuck' })
  puts response = http.request(req).body
  write_file response
end


