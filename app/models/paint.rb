class Paint < ApplicationRecord
  belongs_to :user
  validates :brand, presence: true
  validates :colour, presence: true
  validates :volume, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
  has_one_attached :photo
end
