json.array!(@codetypes) do |codetype|
  json.extract! codetype, :id, :name, :description
  json.url codetype_url(codetype, format: :json)
end
