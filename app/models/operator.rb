class Operator < ActiveRecord::Base
	has_many :detention_centers
	has_many :deaths, through: :detention_centers
	has_many :hrv_reports, through: :detention_centers
	has_many :repercussions, through: :detention_centers


	
end
