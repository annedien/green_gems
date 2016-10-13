class Product < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :species, presence: true
  validates :maintenence, presence: true
  validates :price, presence: true
  validates :description, presence: true, length: {maximum: 500}
  validates :location, presence: true
  validates :needs_sun, presence: true
  validates :needs_shade, presence: true
  validates :needs_halfshade, presence: true

end

