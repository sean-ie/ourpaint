class Paint < ApplicationRecord
  belongs_to :user
  validates :brand, presence: true
  validates :colour, presence: true
  validates :volume, presence: true
  has_one_attached :photo
end
