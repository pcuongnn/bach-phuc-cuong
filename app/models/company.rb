class Company < ActiveRecord::Base
	has_many :shoes
	scope :active,->{where(active: true)}
end
