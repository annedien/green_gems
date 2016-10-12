class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :street_name, presence: true
  validates :house_nr, presence: true
  validates :postal_code, presence: true
  validates :city, presence: true
  validates :country, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
