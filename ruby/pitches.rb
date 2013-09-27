require 'json'

seeds = File.new("seeds.rb", "w")

def parseJSON(filename)
  fullfilename = "../json/" + filename + ".json"
  file = open(fullfilename)
  jsontext = file.read
  parsed = JSON.parse(jsontext)
  file.close
  return parsed
end

parsed = parseJSON("pitches")
seeds.puts "Pitch.delete_all"
parsed.each do |key, value|
  seeds.puts "Pitch.create!(name: '" + key + "')"
end

parsed = parseJSON("makams")
seeds.puts "Makam.delete_all"
parsed.each do |key, value|
#  seeds.puts "Makam.create!(name: '" + value["name"] + "', karar: '" + value["karar"] + "')"
  seeds.puts "Makam.create!(name: '" + value["name"] + "')"
end

parsed = parseJSON("instruments")
seeds.puts "Instrument.delete_all"
parsed.each do |key|
  seeds.puts "Instrument.create!(name: '" + key + "')"
end

parsed = parseJSON("performers")
seeds.puts "Performer.delete_all"
parsed.each do |key|
  seeds.puts "Performer.create!(name: '" + key + "')"
end

seeds.close

