class Bank

  attr_reader :account

  def initialize
    @account = UserAccount.new
  end

  def make_deposit(amount)
    @account.make_deposit(amount)
  end

  def make_withdrawl(amount)
    @account.make_withdrawl(amount)
  end
end