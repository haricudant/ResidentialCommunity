json.extract! profile, :id, :firstname, :lastname, :door_no, :spouse_name, :Number_of_Cars, :Intrested_in_events, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
