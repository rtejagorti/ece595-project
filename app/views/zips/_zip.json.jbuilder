json.extract! zip, :id, :zip_code, :precinct_id, :created_at, :updated_at
json.url zip_url(zip, format: :json)