class Supplier < ApplicationRecord
  has_many :products

  validates :name, presence: true
  validates :document_cnpj, presence: true
  validates :document_cnpj, numericality: { only_integer: true }
end
