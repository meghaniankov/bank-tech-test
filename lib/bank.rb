class Bank

  attr_reader :balance

  def initialize
    @balance = 0
    @account = UserAccount.new
  end

  def make_deposit(amount)
    @balance = @account.make_deposit(amount)
  end

  def make_withdrawl(amount)
    @balance = @account.make_withdrawl(amount)
  end
end