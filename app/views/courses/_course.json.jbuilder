json.extract! course, :id, :title, :duration, :price, :description, :created_at, :updated_at
json.url course_url(course, format: :json)
