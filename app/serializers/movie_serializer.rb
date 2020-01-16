class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :genre, :year, :rating, :description
  belongs_to :genre
end
