class Weapon < ApplicationRecord
	belongs_to :user, optional: true
	has_one :group, through: :user
	has_many :owned_items, through: :user
	has_many :supplies, through: :owned_items
	
end