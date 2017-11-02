class Outlet < ApplicationRecord
	belongs_to :area
	belongs_to :category

	has_many :merchant_offers
end
