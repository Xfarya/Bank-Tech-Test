require './lib/statement_printer'
require './lib/transactions'

class Account

  attr_reader :balance, :date, :statement

  def initialize(name, balance = 0, statement = [])
    @name = name
    puts "Hi #{@name}, your account was created!\n"
    @balance = balance
    @statement = []
    @transaction = Transactions.new
  end

  def deposit(amount)
    @balance += amount
    puts "You deposited £#{'%.2f' % amount}, your balance is now £#{'%.2f' % @balance}"
    @transaction.record_deposit(amount, @balance)
  end

  def withdraw(amount)
    if @balance <= 0
      puts "You do no have sufficient funds"
    else
      @balance -= amount
      puts "You withdrew £#{'%.2f' % amount}, your balance is now £#{'%.2f' % @balance}"
      @transaction.record_withdraw(amount, @balance)
    end
  end

  def print_statement
    print_statement = StatementPrint.new(@transaction.statement)
    print_statement.print_statement
  end

  private


end