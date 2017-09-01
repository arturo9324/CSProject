class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :rol_user, required: true

  validates :name, presence: true, :length => {:minimum => 5, :maximum => 30}
  validates_plausible_phone :phone, presence: true

  before_validation :set_phone

  scope :ord, -> {order("rol_user_id ASC")}

  def email=(address)
    if new_record?
      write_attribute(:email, address)
    end
  end 

  def set_phone
    self.phone = PhonyRails.normalize_number(self.phone, country_code: 'MX')
  end

  def is_admin
    return self.rol_user == RolUser.first
  end

end
