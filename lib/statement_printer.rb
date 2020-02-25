module StatementPrinter

  HEADER = "date || credit || debit || balance"

  def self.to_string(transactions)
    @strings = [HEADER]

    transactions.reverse.map do |transaction|
      @strings << format(transaction)
    end

    puts @strings.join("\n").strip

  end

  private

  def self.format(line)
    "#{line.date} ||#{format_type(line)}|| #{format_amount(line.balance)}"
  end

  def self.format_type(line)
    amount = format_amount(line.amount)
    line.type == :deposit ? " #{amount} || " : " || #{amount} "
  end

  def self.format_amount(amount)
    '%.2f' % amount
  end
  
end
