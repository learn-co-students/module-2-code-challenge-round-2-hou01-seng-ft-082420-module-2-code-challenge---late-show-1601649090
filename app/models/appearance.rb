class Appearance < ApplicationRecord
    belongs_to :guest_id
    belongs_to :episode_id
    validates :rating
end
