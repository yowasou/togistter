json.array!(@gists) do |gist|
  json.extract! gist, :id, :gisturl, :description, :matome_id, :user_id, :code, :codetype_id
  json.url gist_url(gist, format: :json)
end
