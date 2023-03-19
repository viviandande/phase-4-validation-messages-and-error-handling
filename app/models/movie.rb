class Movie < ApplicationRecord
    CATEGORIES = ['Comedy', 'Drama', 'Animation', 'Mystery', 'Horror', 'Action', 'Documentary', 'Science Fiction']

    validates :title, presence: true
    validates :year, numericality:{
        greater_than_or_equal_to: 1888,
        less_than_or_equal_to: Date.today.year
    }
    validates :poster_url, presence: true
    validates :category, inclusion:{
in: CATEGORIES,
    messages: "must be one of: #{CATEGORIES.join(',')}"
    }
end
