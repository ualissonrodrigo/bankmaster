class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :create_account

  has_one :account

  validates :email, uniqueness: true
       
  def create_account
     Account.create(user_id: self.id)
  end
end
