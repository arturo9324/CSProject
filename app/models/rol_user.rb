class RolUser < ApplicationRecord
	has_many :user

	validates :name, presence: true, :length => {:minimum => 5, :maximum => 30}
end
