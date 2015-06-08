require 'csv'

class Guest < ActiveRecord::Base
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Guest.create! row.to_hash
		end 
	end 
end
