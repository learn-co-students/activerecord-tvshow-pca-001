class Show < ActiveRecord::Base
  class << self
    def highest_rating
      maximum("rating")
    end

    def most_popular_show
      find_by(rating: highest_rating)
    end

    def lowest_rating
      minimum("rating")
    end

    def least_popular_show
      find_by(rating: lowest_rating)
    end

    def ratings_sum
      sum(:rating)
    end

    def popular_shows
      where("rating > 5")
    end

    def shows_by_alphabetical_order
      all.sort_by(&:name)
    end
  end
end