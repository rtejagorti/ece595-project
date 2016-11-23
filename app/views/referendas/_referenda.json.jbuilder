json.extract! referenda, :id, :referenda_title, :referenda_desc, :referenda_type, :ballot_id, :created_at, :updated_at
json.url referenda_url(referenda, format: :json)