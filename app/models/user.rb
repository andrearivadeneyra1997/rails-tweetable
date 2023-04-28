class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  has_many :tweets, dependent: :destroy
  has_many :likes, dependent: :destroy

 
  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
  # validar avatar
  validates :password, presence: true, length: { minimum: 6 }
  #validates :role, inclusion: [0, 1] # validar default
end
