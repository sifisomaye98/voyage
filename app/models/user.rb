class User < ApplicationRecord
  has_many :trips
  has_many :destinations, through: :trips
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :trips
  has_many :journals, through: :trips
end
