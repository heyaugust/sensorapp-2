class Room < ActiveRecord::Base
	validates :name, :presence => true

	has_many :floorrooms
	has_many :floors, :through => :floorrooms
end
