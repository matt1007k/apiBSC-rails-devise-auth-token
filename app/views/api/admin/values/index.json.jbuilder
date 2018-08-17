json.array! @values do |value|
    json.type "values"
    json.id value.id
    json.attributes value.attributes
end
