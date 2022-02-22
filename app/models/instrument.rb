class Instrument < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON # If you use SQLite, add this line
  belongs_to :user

  validates :title, :brand, :price, :model, :name, presence: true
  validates :description, length: {maximum: 1000, minimum: 50, too_long: "%{count Characters is the maximum allowed}"}
  validates :title, length: {maximum: 140, too_long: "%{count Characters is the maximum allowed}"}
  validates :price, numericality: {only_integer: true }, length: {minimum: 7}

  BRAND = %w{Fender Gibson Epiphone ESP Martin Dean Taylor Jackson PRS  Ibanez Charvel Washburn }
  NAME = %w{Trumpet Tuba Guitar Piano Cello Violin}
  COLOR = %w{ Black White Navy Blue Red Clear Satin Yellow Seafoam }
  CONDITION = %w{ New Excellent Mint Used Fair Poor }
end
