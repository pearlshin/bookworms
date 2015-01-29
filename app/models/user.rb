class User < ActiveRecord::Base
  has_secure_password
  has_many :books, through: :user_books
  has_many :user_books
  has_many :reviews


  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def edit?(item)
    self.id == item.user_id
    # true
  end
end
