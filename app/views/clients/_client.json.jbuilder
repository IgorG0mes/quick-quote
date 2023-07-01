json.extract! client, :id, :name, :document_cpf, :document_cnpj, :email, :date_birth, :number, :address, :created_at, :updated_at
json.url client_url(client, format: :json)
