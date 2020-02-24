require 'bank'

describe Bank do
  describe '#make_deposit' do
    it 'increases balance by given amount' do
      subject.make_deposit(5)
      expect(subject.account.balance).to eq 5
    end
  end

  describe '#make_withdrawl' do
    it 'decreases balance by a given amount' do
      subject.make_deposit(10)
      subject.make_withdrawl(5)
      expect(subject.account.balance).to eq 5
    end
  end
  
end