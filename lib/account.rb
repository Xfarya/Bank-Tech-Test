require './lib/statement_printer'

class Account

  attr_reader :balance, :date, :statement

  def initialize(name, balance = 0, statement = [])
    @name = name
    puts "Hi #{@name}, your account was created!\n"
    @balance = balance
    @statement = []
  end

  def deposit(amount)
    @balance += amount
    puts "You deposited £#{'%.2f' % amount}, your balance is now £#{'%.2f' % @balance}"
    record_deposit_transaction(amount)
  end

  def withdraw(amount)
    if @balance <= 0
      puts "You do no have sufficient funds"
    else
      @balance -= amount
      puts "You withdrew £#{'%.2f' % amount}, your balance is now £#{'%.2f' % @balance}"
      record_withdraw_transaction(amount)
    end
  end

  def print_statement
    print_statement = StatementPrint.new(@statement)
    print_statement.print_statement
  end

  private

  def record_withdraw_transaction(amount)
    @date = Time.now.strftime("%d/%m/%Y")
    @statement << [@date, 0.00, amount, @balance]
  end 

  def record_deposit_transaction(amount)
    @date = Time.now.strftime("%d/%m/%Y")
    @statement << [@date, amount, 0.00, @balance]
  end 

end