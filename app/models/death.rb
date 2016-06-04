class Death < ActiveRecord::Base
	belongs_to :detention_center
	has_many :presses

end
