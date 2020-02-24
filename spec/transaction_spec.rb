require 'transaction' 

describe Transaction do

  subject(:transaction) { described_class.new('credit', 100) }

  describe '#type' do
    it 'displays type instance variable' do
      expect(subject.type).to eq 'credit'
    end
  end

  describe '#amount' do
    it 'displays amount instance variable' do
      expect(subject.amount).to eq 100
    end
  end

  describe '#deposit' do
    it 'sets type to credit' do
      subject.deposit(5)
      expect(subject.type).to eq 'credit'
    end

  end
end