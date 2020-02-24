class UserAccount

  attr_reader :balance

  def initialize
    @balance = 0
    @transactions = []
  end

  def make_deposit(amount, transaction = new_transaction)
    @balance += amount
    transaction.deposit(amount)
    @transactions << transaction
    "Deposit of $#{amount} was successful"
  end

  def make_withdrawl(amount, transaction = new_transaction)
    @balance -= amount
    transaction.withdrawl(amount)
    @transactions << transaction
    "Withdrawl of $#{amount} was successful"
  end

  def view_transactions
    @transactions
  end

  private

  def new_transaction
    Transaction.new
  end


end