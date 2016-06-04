class DetentionCenter < ActiveRecord::Base
	has_many :deaths
	has_many :advocacy_groups
	has_many :hrv_reports
	has_many :press_reports
	has_many :repercussions
	belongs_to :operator

	
end
