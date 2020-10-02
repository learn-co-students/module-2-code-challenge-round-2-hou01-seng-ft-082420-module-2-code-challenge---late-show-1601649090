class Appearance < ApplicationRecord
    belongs_to :guest 
    belongs_to :episode 
end

validates_inclusion_of :rating, :in => 1..5
