class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :assessments, dependent: :destroy
  has_many :memories, dependent: :destroy
  has_many :goals, dependent: :destroy
end
