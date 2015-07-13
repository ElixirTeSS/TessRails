json.array!(@materials) do |material|
  json.extract! material, :id, :url, :title, :description
  json.url material_url(material, format: :json)
end
