require 'json'

file = open("../json/pitches.json")
jsonPitches = file.read
parsed = JSON.parse(jsonPitches)
#file.close

seeds = File.new("seeds.rb", "w")
parsed.each do |key, value|
  seeds.puts "Pitch.create!(name: '" + key + "')"
end
seeds.close  


