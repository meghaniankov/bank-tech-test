require_relative 'user_account'
require_relative 'statement_printer'

class Bank

  attr_reader :account

  def initialize(account = UserAccount.new)
    @account = account
  end

  def make_deposit(amount)
    @account.new_transaction(:deposit, amount)
  end

  def make_withdrawl(amount)
    fail 'Withdrawl unsuccessful. Withdrawl amount exceeds account balance' if exceeds_balance(amount)
    
    @account.new_transaction(:withdrawl, amount)
  end

  def print_statement(printer = StatementPrinter)
    printer.to_string(@account.transactions)
  end

  private

  def exceeds_balance(amount)
    amount > @account.balance
  end

end
