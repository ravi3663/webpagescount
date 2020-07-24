require 'open-uri'

file = File.read('webserver.log')

log = file.split("\n")

log[0] = log[0].sub('/', '')

logarray = log.map { |line| line.split(' ') }
puts logarray

@hash = Hash.new(0)

logarray.each do |item|
  @hash[item[0]] += 1
end

uniquepages = @hash.sort_by { |h, v| v }.reverse

# page unique views
uniquepages.each do |k, v|
  puts "#{k} #{v} unique views"
end