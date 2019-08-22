class Plant < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :name, :price, :address, presence: true
end
