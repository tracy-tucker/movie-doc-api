class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :year, :rating, :description, :genre_id
  belongs_to :genre
end
