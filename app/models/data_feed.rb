class DataFeed < ApplicationRecord

	before_save :etd_record_key

	def etd_record_key
		# For every instance, combine PPID, acad_career, acad_program and save it in etd_record_key column
		self.etd_record_key = "#{public_person_ID}-#{acad_career_code}-#{acad_program_code}" 
	end
end
