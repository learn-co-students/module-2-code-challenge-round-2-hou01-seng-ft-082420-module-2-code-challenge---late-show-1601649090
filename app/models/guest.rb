class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def self.guest_episode(episode)
        guests = []
        Appearance.all.select do |appearance|
            if appearance.episode_id == episode.id
                guests << Guest.all.find{ |guest| guest.id == appearance.guest_id}
            end
        end
        guests
    end
end
