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

  def print_statement
    @strings = ["date || credit || debit || balance"]
    @account.transactions.reverse.map do |transaction|
      if transaction.type == 'credit'
        @strings << "#{transaction.date} || #{transaction.amount}.00 || || #{transaction.balance}.00"
      else
        @strings << "#{transaction.date} || || #{transaction.amount}.00 || #{transaction.balance}.00"
      end
    end
    puts @strings.join("\n").strip
  end

  private

  def exceeds_balance(amount)
    amount > @account.balance
  end

end