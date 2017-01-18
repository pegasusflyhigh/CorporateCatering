class Vendor < ApplicationRecord
	validates :name,:location,presence:true
	validates :name,length:{minimum:5,maximum:10}

	has_many :menu_items

end
