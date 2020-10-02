class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def self.episodes(guest)
        episodes = []
        Appearance.all.select do |appearance|
            if appearance.episode_id == guest.id
                episodes << Episode.all.find{ |episode| episode.id == appearance.guest_id}
            end
        end
        episodes
    end
end
