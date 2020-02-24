require_relative 'transaction'

class UserAccount

  attr_reader :balance

  def initialize
    @balance = 0
    @transactions = []
  end

  def make_deposit(amount, transaction = new_transaction)
    transaction.deposit(amount)
    @transactions << transaction
    increase_balance(amount)
    "Deposit of $#{amount} was successful"
  end

  def make_withdrawl(amount, transaction = new_transaction)
    transaction.withdrawl(amount)
    @transactions << transaction
    decrease_balance(amount)
    "Withdrawl of $#{amount} was successful"
  end

  def view_transactions
    @transactions
  end

  private

  def new_transaction
    Transaction.new
  end

  def increase_balance(amount)
    @balance += amount
  end

  def decrease_balance(amount)
    @balance -= amount
  end


end