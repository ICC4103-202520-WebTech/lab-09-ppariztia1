class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes, dependent: :destroy

  enum :role, {
    normal: 0,
    admin: 1,
  }, prefix: true

end
