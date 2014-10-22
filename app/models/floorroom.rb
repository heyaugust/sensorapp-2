class Floorroom < ActiveRecord::Base
	attr_accessible :floor_id, :room_id

	belongs_to :floor
	belongs_to :room
end
