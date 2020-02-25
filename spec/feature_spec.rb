require 'bank'

describe 'Bank features' do

  it 'can make deposit' do
    bank = Bank.new
    @date = Time.now.strftime("%d/%m/%Y")
    bank.make_deposit(1000)
    statement = "date || credit || debit || balance\n#{@date} || 1000.00 || || 1000.00\n"
    expect { bank.print_statement }.to output(statement).to_stdout
  end

  it 'can make a withdrawl' do
    bank = Bank.new
    @date = Time.now.strftime("%d/%m/%Y")
    bank.make_deposit(1000)
    bank.make_withdrawl(500)
    statement = "date || credit || debit || balance\n#{@date} || || 500.00 || 500.00\n#{@date} || 1000.00 || || 1000.00\n"    
    expect { bank.print_statement }.to output(statement).to_stdout
  end

end