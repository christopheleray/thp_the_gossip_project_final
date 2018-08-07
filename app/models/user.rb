class User < ApplicationRecord
  has_many :gossips
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
