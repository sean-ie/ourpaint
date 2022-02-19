class Paint < ApplicationRecord
  belongs_to :user
  validates :brand, presence: true
  validates :colour, presence: true
  validates :volume, presence: true, numericality: true
  validates :coordinates, presence: true, numericality: true
  has_one_attached :photo
end
