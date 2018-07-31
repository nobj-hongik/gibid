json.extract! concert, :id, :title, :content, :performDate, :dueTime, :ticketNumber, :created_at, :updated_at
json.url concert_url(concert, format: :json)