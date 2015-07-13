json.array!(@content_providers) do |content_provider|
  json.extract! content_provider, :id, :title, :name, :description, :image_url, :homepage, :node_id
  json.url content_provider_url(content_provider, format: :json)
end
