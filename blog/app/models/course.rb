class Course < ActiveRecord::Base
	has_many :registrations
end
