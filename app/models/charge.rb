class Charge < ActiveRecord::Base

	belongs_to :user
	belongs_to :car
	belongs_to :vendor, class_name: 'User', foreign_key: 'vendor_id'
	scope :available, -> { where('arrived = ?', false) }

	def self.charges(user)
		where(user_id: user.id, completed: false)
	end
end


