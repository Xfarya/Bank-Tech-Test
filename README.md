# Bank Tech Test

Simple program using REPL to imitate a bank account.

<h2 align="center"> Acceptance Criteria </h2>

                                    Given a client makes a deposit of 1000 on 10-01-2023
                                            And a deposit of 2000 on 13-01-2023
                                          And a withdrawal of 500 on 14-01-2023
                                            When she prints her bank statement
                                                    Then she would see

```
                                    date       || credit  || debit  || balance
                                    14/01/2012 ||         || 500.00 || 2500.00
                                    13/01/2012 || 2000.00 ||        || 3000.00
                                    10/01/2012 || 1000.00 ||        || 1000.00
```

## Planning

### Domain Modelling

Looking at the criteria, decided to have three classes - one for the account, one for recording transactions and one for printing the statement. I decided to keep the user interface outputs in the account class. This in mind, I created the following user stories:

### User Stories

                                                     As a user
                                     So that I can store my money in one place
                                  I would like to be able to create a bank account.

<div align="center"><img width="461" alt="Screenshot 2021-11-16 at 20 08 02" src="https://user-images.githubusercontent.com/76533997/142058333-b5b86c1a-2dc3-44ae-9c43-f8aa69d06dd5.png"></div>
<hr>

                                                     As a user
                                     So that I can store my money safely
                               I would like to be able to deposit into my bank account.

<div align="center"><img width="312" alt="Screenshot 2021-11-16 at 20 08 38" src="https://user-images.githubusercontent.com/76533997/142058354-d758c7ab-96bd-4911-98ac-3ce01a705acf.png"></div>
<hr>

                                                     As a user
                               So that I can easily take my money as and when I need it
                               I would like to be able to withdraw from my bank account.

<div align="center"><img width="413" alt="Screenshot 2021-11-16 at 20 09 02" src="https://user-images.githubusercontent.com/76533997/142058364-922134f8-581c-4096-9cf4-4935a050b6d7.png"></div>
<hr>

                                                     As a user
                         So that I can see a record of transactions made to and from my account
                                   I'd like to be able to print a dated bank statement

 <div align="center"><img width="235" alt="Screenshot 2021-11-16 at 20 10 02" src="https://user-images.githubusercontent.com/76533997/142058374-dfe88fe9-6ca6-492f-97ad-9794da0fcf7c.png"></div>
<!-- <img width="412" alt="Screenshot 2021-11-16 at 20 09 22" src="https://user-images.githubusercontent.com/76533997/142058383-f4e2afdb-243e-4b3b-ba23-a69e6bb76e89.png"> -->
<hr>

### TDD

The purpose of this activity was to follow a strict TDD process, executing clean code that tests behaviour and not state. As such, whilst the class could be broken down further (for example, in further refactoring, I could definitely look to moving the balance variable to the transactions class), I believe the jobs carried out by my three classes are apt to their purpose, and the following tests were implemented:

                                                       account_spec.rb
                                 'creation of an account indicated by a welcome message'
                                         'creation of initial balance value of 0'
                                          'updates balance as amount is deposited'
                                            'updates balance as amount is withdrawn'
                                                    'accepts a deposit amount'
                                                  'accepts a withdrawal amount'
                                        'prints transactions in reverse order to console'



                                                    statement_printer_spec.rb
                                             'formats columns and data for statement'

#### Edge cases

There are numerous edge cases that could come up in this exercise. I chose to test for string values rather than float values because I wanted the system to allow the flexbility of allowing integer values (which will be converted to 2 decimal float format). The following cases have been inserted and are currently tested for:

                                             'does not allow for negative values'
                                                 'does not allow string values'

These will be added in further refactoring:

#### Other considerations

Data is presented to two decimal places (although this is not explicitly tested), as this is a state rather than a behaviour.

<hr>
<table align="center">
<tr>
<td width= "33%" align="center">

### Set up


Ruby 3.0.0  
RSpec testing  
Rubocop  
SimpleCov

</td>
<td width= "33%" align="center">

### Installation

Clone this repo,
and

<code> cd Bank-Tech-Test</code>  
<code>bundle install</code>

</td>
<td width= "33%" align="center">

### Testing


<code>cd Bank-Tech-Test</code>  
<code> rspec </code>

</td>
</tr>
</table>

<hr>

#### Run

<table align ="center">
<tr>
<td width= "33%">
<code> irb </code> 
 </td>
  <td></td>
  </tr>
<tr>
<td width= "33%">
<code> require './lib/account'</code>  
  </td>
 <td width="33%">
 ==> <strong>true</strong>
  </td>
  </tr>
  <tr>
    <td>
<code> account = Account.new("John")</code>  
    </td>
    <td>
      ==> <strong>"Hi John, your account was created!"</strong>
    </td>
  </tr>
  <tr>
    <td>
<code> account.deposit(500.5)</code> 
    </td>
    <td>
      ==> <strong>"You deposited £500.50, your balance is now £500.50"</strong>
    </td>
  </tr>
  <tr>
    <td>
<code> account.withdraw(300.5)</code>  
    </td>
    <td>
      ==> <strong>"You withdrew £300.50, your balance is now £200.50"</strong>
    </td>
  </tr>
  <tr>
    <td>
<code> account.print_statement</code>
</td>
    <td>
      
==>

<strong>Date || Debit || Credit || Balance </strong>  
 <strong>16/11/2021 || 0.00 || 300.50 || 200.50 </strong>  
 <strong>16/11/2021 || 500.00 || 0.00. || 500.00 </strong>  
 <strong>16/11/2021 || 0.00 || 300.50 || 200.50 </strong>
    </td>
  </tr>
  
</table>








 




