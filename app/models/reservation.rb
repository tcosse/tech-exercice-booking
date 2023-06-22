class Reservation < ApplicationRecord
  belongs_to :listing
  validates :start_date, :end_date, presence: true

  after_create do
    unless listing.missions.where('mission_type=? AND date=?', 'last_checkout', end_date).empty?
      Mission.create(mission_type: 'checkout_checkin', listing: listing, date: end_date, price: 5)
    end
  end
end
