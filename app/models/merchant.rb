class Merchant < ApplicationRecord
	belongs_to :area
	has_many :outlets
end
