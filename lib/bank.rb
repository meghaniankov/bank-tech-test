class Bank

  attr_reader :balance
  
  def initialize
    @balance = 0
  end

  def make_deposit(amount)
    @balance += 5
  end
end