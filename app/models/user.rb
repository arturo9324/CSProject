class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :rol_user, required: true

  validates :name, presence: true, :length => {:minimum => 5, :maximum => 30}
  validates_plausible_phone :phone, presence: true

  scope :ord, -> {order("rol_user_id ASC")}



end
