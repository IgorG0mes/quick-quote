class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :document_cpf
      t.string :document_cnpj
      t.string :email
      t.string :date_birth
      t.string :number
      t.string :address

      t.timestamps
    end
  end
end
