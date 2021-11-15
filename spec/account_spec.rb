# frozen_string_literal: true
require './lib/account'
require 'time'

describe Account do
  let(:account) { described_class.new('John') }
  # let(:date) { Time.now.strftime('%d/%m/%Y') }
  let(:transactions) { double('transactions') }
  let(:statement) { double('statement') }

    it 'the account should have a welcome message' do
      expect { Account.new("John") }.to output("Hi John, your account was created!\n").to_stdout
    end

  describe '#deposit' do

    it 'it passes deposit amount to transactions class' do
    end
  end

    it 'does not accept strings' do
    end

    it 'does not accept numbers' do
    end

 describe "#print_receipt" do
  
  it 'should print out a copy of the statement with heading table' do
    account
    expect { account.print_receipt }.to output("date  ||  credit  ||  debit  ||  balance\n").to_stdout
  end

end

end