json.extract! user, :id, :name, :document_cpf, :date_birth, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
