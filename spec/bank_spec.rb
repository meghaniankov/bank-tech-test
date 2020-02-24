require 'bank'

describe Bank do
  describe '#make_deposit' do
    it 'increases balance by given amount' do
      subject.make_deposit(5)
      expect(subject.balance).to eq 5
    end
  end

end