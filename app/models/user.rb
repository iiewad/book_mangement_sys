class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_create :generate_user_no

  def generate_user_no
    self.user_no = Digest::UUID.uuid_v5(Digest::UUID::DNS_NAMESPACE, 'user_no')
  end
end
