class DailyMenu < ApplicationRecord

	has_and_belogns_to_many :menu_items
	has_many :orders, dependent: :destroy
	has_and_belogns_to_many :companies
end
