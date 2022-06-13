json.extract! video, :id, :video_title, :youtube_link, :title_id, :created_at, :updated_at
json.url video_url(video, format: :json)
