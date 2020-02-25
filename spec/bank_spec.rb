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
    let(:statement_printer) { double :statement_printer }

    it 'displays users transaction details including date, transaction type, amount, and balance' do
      transactions = subject.account.transactions
      expect(statement_printer).to receive(:to_string).with(transactions)
      subject.print_statement(statement_printer)
    end
  end
  
end