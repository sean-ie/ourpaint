class Paint < ApplicationRecord
  geocoded_by :address
  belongs_to :user
  validates :brand, presence: true
  validates :colour, presence: true
  validates :volume, presence: true
  has_one_attached :photo
  after_validation :geocode, if: :will_save_change_to_address?
end
