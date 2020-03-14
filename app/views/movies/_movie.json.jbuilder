json.extract! movie, :id, :title, :image_url, :rating, :genre, :release_date, :created_at, :updated_at
json.url movie_url(movie, format: :json)
