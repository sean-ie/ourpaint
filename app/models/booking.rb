class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :paint
  validates :user, presence: true
  validates :paint, presence: true
  validates :datetime, presence: true
end
