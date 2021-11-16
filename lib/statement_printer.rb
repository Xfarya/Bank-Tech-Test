class StatementPrint

  attr_accessor :statement

  def initialize(statement)
    @statement = statement
  end

  def print_statement
    puts " Date || Debit || Credit || Balance "
    @statement.reverse.each { |date, deb, cr, bal|
      deb = '%.2f' % deb
      cr = '%.2f' % cr
      bal = '%.2f' % bal
    puts "#{date} || #{deb} || #{cr} || #{bal}" }
  end
end