require './lib/transactions'
require './lib/statement_printer'

class Account

  attr_reader :transactions, :statement

  def initialize(name, transactions: Transactions.new, statement: StatementPrinter.new)
    @name = name
    puts "Hi #{@name}, your account was created!"
    @transactions = transactions
    @statement = statement
  end

  def deposit(deposit_amount)
    transactions.deposit(deposit_amount)
  end 

  def withdraw(withdraw_amount)
    transactions.withdraw(withdraw_amount)
  end 

  def print_receipt
   statement.print_statement(transactions.receipt)
  end
end
