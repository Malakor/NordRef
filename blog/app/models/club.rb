class Club < ActiveRecord::Base
  #belongs_to :referee
	has_many  :referees

	validates :shortform,
		presence: true,
		uniqueness: true,
		length: {minimum: 3, maximum: 5}

	validates :fullname,
	 	presence: true,
		uniqueness: true

	validates :regionalassociation,
		presence:true
	#validates :mail, presence: true
end
