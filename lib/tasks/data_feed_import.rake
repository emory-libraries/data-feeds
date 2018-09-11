require 'json'
require 'csv'

namespace :data_feed do
	desc "Import data into data feed model"

	task json_import: [:environment] do
		puts "importing data from json"
		json_file = JSON.parse(File.read('./DataFeed_import.json'))
		json_file.each do |data|
			DataFeed.create(data.to_h)
		end
		puts "import completed"
	end

	task csv_import: [:environment] do
		puts "importing data from csv"
		csv_file = CSV.parse(File.read('./DataFeed_import.csv'), headers: true)
		csv_file.each do |data|
			DataFeed.create(data.to_h)
		end
		puts "import completed"
	end
end