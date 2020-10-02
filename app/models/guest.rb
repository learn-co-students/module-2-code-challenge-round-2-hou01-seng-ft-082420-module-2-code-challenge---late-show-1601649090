class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

        def self.guest_epi(episode)
        allguests = []
        Appearance.all.select do |appearance|
            if appearance.episode_id == episode.id
                allguests << Guest.all.find{ |guest| guest.id == appearance.guest_id}
            end
        end
        allguests
    end
    
end
