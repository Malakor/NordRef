class Referee < ActiveRecord::Base

	#has_one :club
### Hier belongs_to, da der Schiri einem Verein mit vielen angehoert. 
  belongs_to :club
  has_many :leadgames
  has_many :licences
	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :mail, presence: true
end
