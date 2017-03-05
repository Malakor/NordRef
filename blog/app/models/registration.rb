class Registration < ActiveRecord::Base
	belongs_to :courses
	
	validates :registrationthrough, presence: true
	validates :registeredref, presence: true
end
