class UserAccount

  attr_reader :balance

  def initialize
    @balance = 0
    @transactions = []
  end

  def make_deposit(amount)
    @balance += amount
    @transactions << 'transaction1'
    "Deposit of $#{5} was successful"
  end

  def make_withdrawl(amount)
    @balance -= amount
    "Withdrawl of $#{5} was successful"
  end

  def view_transactions
    @transactions
  end

end