json.extract! title, :id, :title, :title_type, :year, :image, :release_date, :minutes, :plot, :countries, :rating,
              :votes_count, :keywords, :created_at, :updated_at
json.url title_url(title, format: :json)
