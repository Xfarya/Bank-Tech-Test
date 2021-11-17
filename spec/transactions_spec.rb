require './lib/transactions'

describe Transactions do
  # let(:account) { double("account", :deposit => amount, :withdraw => balance) }
  let(:amount) { 500.00 }
  let(:balance) { 500.00 }
  let(:transaction) { Transactions.new }

  it 'accepts deposit amount and inserts into statement array' do
    expect(transaction.record_deposit(amount, balance)).to eq [["17/11/2021", 500.0, 0.0, 500.0]]
  end

  it 'accepts withdraw amount and inserts into statement array' do
    expect(transaction.record_withdraw(amount, balance)).to eq [["17/11/2021", 0.0, 500.0, 500.0]]
  end

end