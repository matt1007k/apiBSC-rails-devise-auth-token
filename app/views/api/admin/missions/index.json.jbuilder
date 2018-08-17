json.array! @missions do |mission|
    json.(mission, :id, :content, :created_at, :updated_at)
end
