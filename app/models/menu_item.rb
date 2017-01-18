class MenuItem < ApplicationRecord
	validates :name,:veg,:price,presence:true
	validates :name, :uniqueness=>{:scope => :vendor_id}
	validates :name,length:{minimum:5,maximum:10}


	belongs_to :vendor

	scope :veg,->{where(veg:true)}

	


end
