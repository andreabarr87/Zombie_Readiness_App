class User < ApplicationRecord
	has_secure_password
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :group_id, presence: true
	validates :group_id, numericality: { only_integer: true }

	belongs_to :group
	has_many :weapons
	has_many :owned_items
	has_many :supplies, through: :owned_items


	
end