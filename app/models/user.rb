class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, length: {minimun: 4, maximum: 20}

  has_many :exhibits, class_name: "Item", foreign_key: "exhibitor_id"
end
