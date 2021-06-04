class User < ApplicationRecord
   attachment :profile_image

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :introduction, presence: false, length: { maximum: 50 }
  validates :name, presence: true, length: { in: 2..20 }, uniqueness: true
  validates :email, presence: true
end
