class Transactions

  attr_reader :balance, :credit, :debit, :receipt, :date

  def initialize
    initialize_variables
  end

  def deposit(deposit_amount)
    deposited
    @debit = deposit_amount
    calculate_balance
    deposit_amount.to_f
  end 

  def withdraw(withdraw_amount)
    withdrawn
    @credit = withdraw_amount
    calculate_balance
    withdraw_amount.to_f
  end 

  private 

  def initialize_variables
    @date = Time.now.strftime("%d/%m/%Y")
    @credit = 0
    @debit = 0
    @balance = 0
    @receipt = []
    @deposited = false
    @withdrawn = false
  end

  def commit_transaction
    @receipt << [ @date, @credit, @debit, @balance ]
    clear_transaction_data
  end

  def calculate_balance 
    if @deposited == true
      @balance += @debit.to_f
      commit_transaction
    elsif @withdrawn == true && @balance >= @credit
      @balance -= @credit.to_f
      commit_transaction
    elsif @balance <= @credit
      raise "Sorry, you do not have enough balance to withdraw at this time!"
      clear_transaction_data
    end
    clear_data
  end

  def clear_data
    @deposited = false
    @withdrawn = false
  end

  def clear_transaction_data
    @debit = 0
    @credit = 0
  end

  def deposited
    @deposited = true
  end

  def withdrawn
    @withdrawn = true
  end

end