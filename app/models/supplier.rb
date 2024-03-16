class Supplier < ApplicationRecord
  has_many :products

  validates :name, presence: true
  validates :document_cnpj, presence: true
  validates :document_cnpj, numericality: { only_integer: true }

  scope :search_by_name, -> (query_name) { where("name LIKE ?", "#{query_name}%") }
  scope :search_by_cnpj, -> (query_cnpj) { where("document_cnpj LIKE ?", "#{query_cnpj}%") }
end
