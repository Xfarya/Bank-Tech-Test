require './lib/account'

class Transactions
  attr_accessor :statement

  def initialize
    @statement = []
    @date = Time.now.strftime("%d/%m/%Y")
  end

  def record_deposit(amount, balance)
    @statement << [@date, amount, 0.00, balance]
  end 

  def record_withdraw(amount, balance)
    @statement << [@date, 0.00, amount, balance]
  end 

end