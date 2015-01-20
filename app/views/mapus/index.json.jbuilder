json.array!(@mapus) do |mapu|
  json.extract! mapu, :id, :longitude, :latitude, :address, :description, :title
  json.url mapu_url(mapu, format: :json)
end
