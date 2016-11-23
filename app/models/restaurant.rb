class Restaurant < ApplicationRecord

  has_many: :reviews

  validates :name, :address, presence:true
  validates :catagory, inclusion: { in: %w(chinese french italian japanese belgian),
    message: "%{value} is not a valid catagory" }

end
