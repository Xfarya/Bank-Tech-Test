# frozen_string_literal: true
require './lib/account'
require 'time'

describe Account do
  let(:account) { Account.new('John') }
  let(:date) { Time.now.strftime('%d/%m/%Y') }
  # let(:transactions) { double('transactions') }
  # let(:statementprint) { double('statementprint') }

    it 'creation of an account indicated by a welcome message' do
      expect { Account.new("John") }.to output("Hi John, your account was created!\n").to_stdout
    end

  describe '#balance' do
    it 'creates initial balance value of 0' do
      expect(account.balance).to eq 0
    end

    it 'updates balance as amount is deposited' do
      account
      expect { account.deposit(500) }.to output("You deposited £500.00, your balance is now £500.00\n").to_stdout
    end

    it 'does not allow for negative values' do
      account
      expect { account.withdraw(200) }.to output("You do no have sufficient funds\n").to_stdout
    end

    it 'updates balance as amount is withdrawn' do
      account.deposit(500)
      expect {account.withdraw(200)}.to output("You withdrew £200.00, your balance is now £300.00\n").to_stdout
    end
  end

  describe '#deposit' do

    it 'does not accept strings as input' do
      expect { account.deposit("five")}.to raise_error('Invalid input, please enter a number')
    end

    it 'accepts a deposit amount' do
      expect(account.deposit(500)).to eq [["#{date}", 500, 0.00, 500]]
    end
  end

  describe '#withdraw' do

    it 'does not accept strings as input' do
      account.deposit(100)
      expect { account.withdraw("five")}.to raise_error('Invalid input, please enter a number')
    end

    it 'accepts a withdrawal amount' do
      account.deposit(400)
      expect(account.withdraw(200)).to eq [["#{date}", 400, 0.00, 400], ["#{date}", 0.00, 200, 200]]
    end
  end



  describe '#print_statement' do

    it 'prints transactions in reverse order to console' do
      account.deposit(500)
      account.withdraw(200)
      expect(account.print_statement).to eq [["#{date}", 0.00, 200, 300], ["#{date}", 500, 0.00, 500]]
    end

  end

end