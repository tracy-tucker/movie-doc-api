class GenreSerializer
    include FastJsonapi::ObjectSerializer
    attribute :name
    has_many :movies
end