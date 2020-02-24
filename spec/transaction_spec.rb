require 'transaction' 

describe Transaction do

  subject(:transaction) { described_class.new('credit') }

  describe '#view_type' do
    it 'returns type instance variable' do
      expect(subject.view_type).to eq 'credit'
    end
  end
end