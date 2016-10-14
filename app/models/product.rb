class Product < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :species, presence: true
  validates :price, presence: true
  validates :description, presence: true, length: {maximum: 500}


end
