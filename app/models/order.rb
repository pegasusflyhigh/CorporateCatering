class Order < ApplicationRecord

	belongs_to :Employee
	belongs_to :DailyMenu

end
