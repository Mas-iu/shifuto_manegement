class User < ApplicationRecord
  has_many :possibility_attendances
  has_many :decision_attendances

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :employee_name, presence: true
  validates :employee_name_kana, presence: true

end
