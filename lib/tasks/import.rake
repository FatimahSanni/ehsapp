require 'csv'

task import_occupation: :environment  do
	file = File.read('/Users/fatimahsanni/Desktop/occupation1.csv')
	csv = CSV.parse(file, headers: true)
	csv.each do |row|
		Occupation.create!(row.to_hash)
	end
	
end

task import_state: :environment  do
	file = File.read('/Users/fatimahsanni/Downloads/states.csv')
	csv = CSV.parse(file, headers: true)
	csv.each do |row|
		State.create!(row.to_hash)
	end
	
end

task import_lagos: :environment  do
	file = File.read('/Users/fatimahsanni/Documents/lga_lagos.csv')
	csv = CSV.parse(file, headers: true)
	csv.each do |row|
		Lga.create!(row.to_hash)
	end
	
end