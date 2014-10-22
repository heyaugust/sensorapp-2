class Floor < ActiveRecord::Base
	validates :name, :presence => true

	has_many :floorrooms
	has_many :books, :through => :floorrooms
end
