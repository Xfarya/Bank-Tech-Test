# Bank Tech Test
Simple program using REPL to imitate a bank account.

### Acceptance Criteria

Given a client makes a deposit of 1000 on 10-01-2023  
And a deposit of 2000 on 13-01-2023  
And a withdrawal of 500 on 14-01-2023  
When she prints her bank statement  
Then she would see  

date || credit || debit || balance  
14/01/2012 || || 500.00 || 2500.00   
13/01/2012 || 2000.00 || || 3000.00   
10/01/2012 || 1000.00 || || 1000.00

## User Stories

*As a user   
So that I can store my money in one place  
I would like to be able to create a bank account.*

*As a user  
So that I can store my money safely  
I would like to be able to deposit into my bank account.*

*As a user   
So that I can easily take my money as and when I need it  
I would like to be able to withdraw from my bank account.*

*As a user   
So that I can see a record of transactions made to and from my account  
I'd like to be able to print a dated bank statement*

## Planning

Decided to have three classes - one for the account actions, one for dealing with transactions, and one for print the statement.


### Domain Modelling

### TDD
Following this, followed a TDD process to implement the user stories.

Account class
- Can create a new Account
- Can deposit money
- Can withdraw money
- Can print_statement

Transactions class
- Can calculate balance of money deposited or withdrawn

Statement class
- Can print receipt of statement


### Set up

Ruby 3.0.0
RSpec testing
Rubocop
SimpleCov

### Installation

Clone this repo

cd Bank-Tech-Test
bundle install

### Testing

cd Bank-Tech-Test
rspec

## Run



