require 'csv'

namespace :data_feed do
	desc "CSV export of data feed model"

	task csv_export: [:environment] do
		puts "exporting data from data feed model"

		data_feed = DataFeed.all
		attributes = DataFeed.column_names

		CSV.open("DataFeed_export.csv", "wb") do |csv|
			csv << attributes
			data_feed.each do |data|
				csv << data.attributes.values_at(*attributes)
			end
		end
		puts "export completed"
	end
end
