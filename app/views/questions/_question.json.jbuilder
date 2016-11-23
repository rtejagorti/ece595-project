json.extract! question, :id, :question, :question_desc, :question_topic, :created_at, :updated_at
json.url question_url(question, format: :json)