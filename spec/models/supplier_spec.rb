require 'rails_helper'

RSpec.describe Supplier, type: :model do

  let(:new_supplier) do
    FactoryBot.create(:supplier)
  end

  describe 'creation' do
    it 'does name and document_cnpj cannot be nil' do
      expect(new_supplier.name && new_supplier.document_cnpj)
        .to_not eq(nil)
    end
  end
end
