class Movie < ApplicationRecord
    belongs_to :genre
    accepts_nested_attributes_for :genre

    validates :title, presence: true
end
