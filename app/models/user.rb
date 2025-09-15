class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :department, optional: true
  belongs_to :manager, class_name: "User", optional: true
  has_many :direct_reports, class_name: "User", foreign_key: "manager_id"

  enum :role, { employee: 0, manager: 1, admin: 2 }

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
