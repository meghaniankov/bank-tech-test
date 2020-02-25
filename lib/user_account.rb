require_relative 'transaction'

class UserAccount

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def make_deposit(amount, transaction = new_transaction)
    transaction.deposit(amount)
    add_transaction_to_log(transaction)
    increase_balance(amount)
    "Deposit of $#{amount} was successful"
  end

  def make_withdrawl(amount, transaction = new_transaction)
    transaction.withdrawl(amount)
    add_transaction_to_log(transaction)
    decrease_balance(amount)
    "Withdrawl of $#{amount} was successful"
  end

  def view_transactions
    @transactions
  end

  private

  def new_transaction
    Transaction.new(@balance)
  end

  def increase_balance(amount)
    @balance += amount
  end

  def decrease_balance(amount)
    @balance -= amount
  end

  def add_transaction_to_log(transaction)
    @transactions << transaction
  end

end