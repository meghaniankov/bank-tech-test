require 'bank'

describe Bank do
  describe '#make_deposit' do
    it 'increases balance by given amount' do
      subject.make_deposit(5)
      expect(subject.account.balance).to eq 5
    end

    it 'returns "Successful Deposit" message' do
      expect(subject.make_deposit(5)).to eq 'Deposit of $5 was successful'
    end

  end

  describe '#make_withdrawl' do
    it 'decreases balance by a given amount' do
      subject.make_deposit(10)
      subject.make_withdrawl(5)
      expect(subject.account.balance).to eq 5
    end

    it 'returns "Successful Withdrawl" message' do
      subject.make_deposit(10)
      expect(subject.make_withdrawl(5)).to eq 'Withdrawl of $5 was successful'
    end

    it 'raises error if withdrawl amount exceeds balance' do
      expect { subject.make_withdrawl(5) }.to raise_error 'Withdrawl unsuccessful. Withdrawl amount exceeds account balance'
    end
  end

  describe '#print_statement' do
    it 'displays users transaction details including date, transaction type, amount, and balance' do
      @date = Time.now.strftime("%d/%m/%Y")
      subject.make_deposit(10)
      subject.make_withdrawl(5)
      statement = "date || credit || debit || balance\n#{@date} || || 5.00 || 5.00\n#{@date} || 10.00 || || 10.00\n"
      expect { subject.print_statement }.to output(statement).to_stdout
    end
  end
  
end