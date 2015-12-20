class Referee < ActiveRecord::Base

	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :mail, presence: true
end
