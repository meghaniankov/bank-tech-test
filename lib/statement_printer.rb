module StatementPrinter

  HEADER = "date || credit || debit || balance"

  def self.to_string(transactions)
    @strings = [HEADER]
    transactions.reverse.map do |transaction|
        @strings << "#{transaction.date} ||#{format_type(transaction)}|| #{transaction.balance}.00"
    end
    puts @strings.join("\n").strip
  end

  private

  def self.format_type(transaction)
    amount = transaction.amount
    type = transaction.type
    type == :deposit ? " #{amount}.00 || " : " || #{amount}.00 "
  end
  
end
