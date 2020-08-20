json.extract! blog, :id, :title, :body, :published, :valid_from, :valid_to, :main_poster, :thumb_poster, :created_at, :updated_at
json.url blog_url(blog, format: :json)
