require 'rails_helper'

RSpec.describe Supplier, type: :model do
  let(:supplier) { create(:supplier) }

  describe 'creation' do
    it 'does name and document_cnpj cannot be nil' do
      expect(supplier.name && supplier.document_cnpj)
        .to_not eq(nil)
    end
  end
end
