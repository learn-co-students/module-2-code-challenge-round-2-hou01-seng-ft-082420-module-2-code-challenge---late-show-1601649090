class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances 

    # def avg_rating
    #     appearances = self.appearances.uniq
    #     rating = appearances.collect{|a| a.rating}
    #     (ratings.sum) / ratings.count
    # end

end
