require 'bank'

describe 'Bank features' do

  it 'can make deposit' do
    bank = Bank.new
    bank.make_deposit(1000)
    @date = Time.now.strftime("%d/%m/%Y")
    statement = "date || credit || debit || balance\n#{@date} || 1000.00 || || 1000.00\n"
    expect { bank.print_statement }.to output(statement).to_stdout
  end

end