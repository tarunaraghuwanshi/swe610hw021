json.array!(@hos) do |ho|
  json.extract! ho, :id, :name
  json.url ho_url(ho, format: :json)
end
