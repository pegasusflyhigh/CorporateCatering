class Employee < ApplicationRecord
	
	validates :name,:designation,presence:true
	validates :name,length:{minimum:5,maximum:10}

	belongs_to :company

end
