class Booking < ApplicationRecord
  belongs_to :listing
  validates :start_date, :end_date, presence: true

  after_create do
    Mission.create(mission_type: 'first_checkin', listing: listing, date: start_date, price: 20)
    Mission.create(mission_type: 'last_checkout', listing: listing, date: end_date, price: 5)
  end
end
