class Company < ApplicationRecord
	validates :name,:location,:phoneno,:email,presence:true
	validates :phoneno,:email,uniqueness:true
	validates :phoneno,numericality:{only_integer:true}
	validates :phoneno,length:{is:10}
	validates :name,length:{minimum:5,maximum:10}

	has_many :employees 
	
	before_create :show_create

	#after_save :show_aftersave

	#before_destroy :show_beforedestroy

	#around_save :show_aroundsave

	before_save :show_save, :remove_space

	def show_aroundsave
		puts "around_save!!!"
	end

	def before_destroy
		puts "before_destroy!!"
	end

	def show_aftersave
		puts "after save!!"
	end

	def show_create
		puts "before create!"
	end

	
	def show_save
		puts "before save!!"
	end
	
	def remove_space
		puts "before_save!!"
		self.name = name.squish
	end
		
	def custom_validation
		errors.add(:name, "Not valid")
	end
end
