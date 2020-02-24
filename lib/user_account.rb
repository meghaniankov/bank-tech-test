class UserAccount

  attr_reader :balance

  def initialize
    @balance = 0
    @transactions = []
  end

  def make_deposit(amount)
    @balance += amount
    @transactions << 'transaction'
    "Deposit of $#{amount} was successful"
  end

  def make_withdrawl(amount)
    @balance -= amount
    @transactions << 'transaction'
    "Withdrawl of $#{amount} was successful"
  end

  def view_transactions
    @transactions
  end


end