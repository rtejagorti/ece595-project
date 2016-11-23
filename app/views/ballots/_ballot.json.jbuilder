json.extract! ballot, :id, :election_year, :created_at, :updated_at
json.url ballot_url(ballot, format: :json)