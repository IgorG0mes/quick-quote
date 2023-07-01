class Order < ApplicationRecord
  belongs_to :user
  belongs_to :client

  has_many :order_items
  has_many :product, through: :order_items
  has_one :comission
end
