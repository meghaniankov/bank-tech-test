require 'user_account'

describe UserAccount do
  describe '#make_deposit' do
    it 'increases balance by given amount' do
      subject.make_deposit(5)
      expect(subject.balance).to eq 5
    end

    it 'returns "Successful Deposit" message' do
      expect(subject.make_deposit(5)).to eq 'Deposit of $5 was successful'
    end
  end

  describe '#make_withdrawl' do
    it 'decreases balance by a given amount' do
      subject.make_deposit(10)
      subject.make_withdrawl(5)
      expect(subject.balance).to eq 5
    end

    it 'returns "Successful Withdrawl" message' do
      subject.make_deposit(10)
      expect(subject.make_withdrawl(5)).to eq 'Withdrawl of $5 was successful'
    end
  end

end