require "pry"
require_relative "../models/Human.rb"
require_relative "../models/Alien_Overlord.rb"
require_relative "../models/Abduction.rb"

puts "creating humans"
  h1 = Human.new("Charlie", "hazel")
  h2 = Human.new("Brianna", "brown")
  h3 = Human.new("Brad", "blue")
puts "created humans"

puts "creating alien overlords"
  a1 = Alien_Overlord.new("Zorp", 3, "tomato paste", "blargon 5")
  a2 = Alien_Overlord.new("Blerm", 2, "mayonnaise", "blargon 5")
  a3 = Alien_Overlord.new("Zorp", 7, "chocolate syrup", "blargon 5")
puts "created alien overlords"

puts "creating abductions"
  a1.abduct(h1, "06/11/1992")
  a1.abduct(h2, "11/27/1992")
puts "created abductions"

binding.pry
puts "Long live our alien overlords"
