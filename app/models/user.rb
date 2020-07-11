class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :account

  before_create :generate_user_no

  def generate_user_no
    self.user_no = SecureRandom.hex(10)
  end
end
