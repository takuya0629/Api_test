json.extract! chomp, :id, :name, :content, :created_at, :updated_at
json.url chomp_url(chomp, format: :json)
