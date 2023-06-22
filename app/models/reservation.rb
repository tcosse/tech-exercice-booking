class Reservation < ApplicationRecord
  belongs_to :listing
  validates :start_date, :end_date, presence: true

  after_create do
    # puts('last_checkout date', listing.missions.find_by(mission_type: 'last_checkout').date)
    # puts('reservation end_date', end_date)
    # listing.missions.find_by(mission_type: 'last_checkout').date == end_date ? puts('same date') : puts('not the same')
    unless listing.missions.find_by(mission_type: 'last_checkout').date == end_date
      Mission.create(mission_type: 'checkout_checkin', listing: listing, date: end_date)
    end
  end
end
