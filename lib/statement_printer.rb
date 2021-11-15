class StatementPrinter

  def print_statement(statement)
    puts @transaction_table = ["date  ||  credit  ||  debit  ||  balance"]
    @table = statement.reverse.each do |d, c, deb, b|
    deb = '%.2f' % deb
    c = '%.2f' % c
    b = '%.2f' % b
    puts ["#{d} || #{c} ||  #{deb}  ||  #{b}"].join('\n')
    end
  end

end