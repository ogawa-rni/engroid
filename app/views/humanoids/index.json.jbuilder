json.array!(@humanoids) do |humanoid|
  json.extract! humanoid, :id
  json.url humanoid_url(humanoid, format: :json)
end
