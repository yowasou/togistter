json.array!(@matomes) do |matome|
  json.extract! matome, :id, :name, :description
  json.url matome_url(matome, format: :json)
end
