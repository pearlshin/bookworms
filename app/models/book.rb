class Book < ActiveRecord::Base
  has_many :user_books
  has_many :users, through: :user_books
  has_many :reviews

  validates :title, presence: true
  validates :author, presence: true
end
