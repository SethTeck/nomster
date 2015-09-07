class Place < ActiveRecord::Base
	belongs_to :user
	geocoded_by :address
	after_validation :geocode

	validates :name, :presence => true, :length => { :minimum => 3, :maximum => 60 }
	validates :address, :presence => true, :length => { :minimum => 3, :maximum => 60 }
	validates :description, :presence => true, :length => { :minimum => 10 }
end
