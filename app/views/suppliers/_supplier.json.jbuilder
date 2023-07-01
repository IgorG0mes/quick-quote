json.extract! supplier, :id, :name, :business_name, :document_cnpj, :address, :phone_number, :email, :website, :observation, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
