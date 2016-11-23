class Restaurant < ApplicationRecord

  has_many :reviews, dependent: :destroy
  validates :name, :address, presence:true
  validates :category, inclusion: { in: %w(chinese french italian japanese belgian),
    message: "%{value} is not a valid catagory" }

end
