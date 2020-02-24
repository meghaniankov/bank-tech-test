class UserAccount

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def make_deposit(amount)
    @balance += amount
    'Deposit successful'
  end

  def make_withdrawl(amount)
    @balance -= amount
  end

end