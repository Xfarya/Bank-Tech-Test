require './lib/account'

class Transactions
  attr_accessor :statement

  def initialize
    @statement = []
  end

  def record_deposit(amount, balance)
    @date = Time.now.strftime("%d/%m/%Y")
    @statement << [@date, amount, 0.00, balance]
  end 

  def record_withdraw(amount, balance)
    @date = Time.now.strftime("%d/%m/%Y")
    @statement << [@date, 0.00, amount, balance]
  end 

end