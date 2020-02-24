require_relative 'user_account'

class Bank

  attr_reader :account

  def initialize
    @account = UserAccount.new
  end

  def make_deposit(amount)
    @account.make_deposit(amount)
  end

  def make_withdrawl(amount)
    fail 'Withdrawl unsuccessful. Withdrawl amount exceeds account balance' if exceeds_balance(amount)
    @account.make_withdrawl(amount)
  end

  private

  def exceeds_balance(amount)
    amount > @account.balance
  end

end