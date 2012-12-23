require 'open-uri'

#Simple example of how to get fairly up to date stock data via Yahoo's finance API

puts "Type in a stock symbol."
symbol = gets

request = URI.encode("http://finance.yahoo.com/d/quotes.csv?s=" + symbol.to_s + "&f=d1l1jkm")
contents = URI.parse(request).read

contents = contents.split(",") #Yahoo's API returns a CSV

date = contents[0] #Trade date
cur = contents[1] #Current stock price
low52 = contents[2] #52 week low
high52 = contents[3] #52 week high
range = contents[4] #Today's range

puts "date: " + date
puts "last bid: " + cur
puts "52 week high: " + high52
puts "52 week low: " + low52
puts "range: " + range