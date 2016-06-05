# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'csv'
require 'rake'

namespace :defaultuser do
  task :import => :environment do 
	CSV.foreach('data/detention_centers_cleaned.csv', :headers => true) do |row|
 		DetentionCenter.create!(row.to_hash)
	  puts row
		end
	end

	task :import => :environment do
	CSV.foreach('data/inmate_deaths_cleaned.csv', :headers => true) do |row|
		Death.create!(row.to_hash)
		puts row
	  end
	end
end




Rails.application.load_tasks
