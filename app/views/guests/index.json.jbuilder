json.array!(@guests) do |guest|
  json.extract! guest, :id, :name, :email, :event_id, :comingwith
  json.url guest_url(guest, format: :json)
end
