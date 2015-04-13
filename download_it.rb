#!/usr/bin/env ruby

# Ruby script to download multiple images from multiple websites through an array

str = File.read('sample.csv')
test = str.split(',')

`mkdir images`
test.each do |image|
  `wget -P ./images/ #{image}`
end
