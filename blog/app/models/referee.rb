class Referee < ActiveRecord::Base
	has_secure_password
	#has_one :club
### Hier belongs_to, da der Schiri einem Verein mit vielen angehoert. 
  belongs_to :club
  has_many :leadgames
  has_many :licences
	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :username, presence: true, uniqueness: true
	validates :mail,
			presence: true,
			format: {
				with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
				}
end
