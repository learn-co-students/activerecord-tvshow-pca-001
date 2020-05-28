require "pry"
class Show < ActiveRecord::Base
  class << self
    def highest_rating
      maximum(:rating)
    end

    def most_popular_show
      order(rating: :desc).first
    end

    def lowest_rating
      minimum(:rating)
    end

    def least_popular_show
      order(rating: :asc).first
    end

    def ratings_sum
      sum(:rating)
    end

    def popular_shows
      where("rating > 5")
    end

    def shows_by_alphabetical_order
      order(name: :asc)
    end
  end
end
