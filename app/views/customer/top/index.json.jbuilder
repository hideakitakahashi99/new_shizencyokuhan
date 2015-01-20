json.array!(@staff_addresses) do |staff_address|
  json.extract! staff_address, :id
  json.url staff_address_url(staff_address, format: :json)
end
