module StatementPrinter

  HEADER = "date || credit || debit || balance"

  def self.to_string(transactions)
    @strings = [HEADER]
    transactions.reverse.map do |transaction|
        @strings << "#{transaction.date} ||#{format_type(transaction)}|| #{format_amount(transaction.balance)}"
    end
    puts @strings.join("\n").strip
  end

  private

  def self.format_type(transaction)
    amount = format_amount(transaction.amount)
    transaction.type == :deposit ? " #{amount} || " : " || #{amount} "
  end

  def self.format_amount(amount)
    '%.2f' % amount
  end
  
end
