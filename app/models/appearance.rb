class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :episode
    def self.ratings(guest)
        Appearance.all.select{ |appearance| appearance.guest_id == guest.id}
    end
end
