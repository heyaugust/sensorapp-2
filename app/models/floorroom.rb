class Floorroom < ActiveRecord::Base
	belongs_to :floor
	belongs_to :room
end
