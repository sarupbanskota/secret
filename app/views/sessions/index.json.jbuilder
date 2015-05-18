json.array!(@sessions) do |session|
  json.extract! session, :id, :user_id, :headline, :subline, :description, :duration, :slot, :confirmed, :class, :accepted, :confirmed, :track, :date
  json.url session_url(session, format: :json)
end
