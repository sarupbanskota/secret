json.array!(@seminars) do |seminar|
  json.extract! seminar, :id, :user_id, :headline, :subline, :description, :duration, :slot, :confirmed, :category, :accepted, :confirmed, :track, :date
  json.url seminar_url(seminar, format: :json)
end
