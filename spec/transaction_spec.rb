require 'transaction' 

describe Transaction do

  describe '#deposit' do
    it 'sets type to credit' do
      subject.deposit(5)
      expect(subject.type).to eq 'credit'
    end

    it 'sets amount to amount passed' do
      subject.deposit(5)
      expect(subject.amount).to eq 5
    end
  end
end