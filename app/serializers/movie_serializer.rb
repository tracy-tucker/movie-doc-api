class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :genre_id, :year, :rating, :description
  belongs_to :genre
end
