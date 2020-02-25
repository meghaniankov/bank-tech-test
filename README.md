# Bank Tech Test 
Practice tech test in Week 10 at Makers Academy.

Build a simple command line program where a bank customer can make deposits, make withdrawls, and print their bank statements.

See tech test requirements [here](https://github.com/meghaniankov/bank-tech-test#requirements).

## Getting Started

### Run Bundle Install

Before you run the program, make sure your gems are up to date by running:

```
$ bundle install
```

## Running the program

### IRB

```sh
2.6.3 :001 > require './lib/bank.rb'
 => true 
2.6.3 :002 > bank = Bank.new
 => #<Bank:0x00007fa8752753d8 @account=#<UserAccount:0x00007fa8752753b0 @balance=0, @transactions=[]>> 
2.6.3 :003 > bank.make_deposit(1000)
 => "Deposit of $1000 was successful" 
2.6.3 :004 > bank.make_deposit(2000)
 => "Deposit of $2000 was successful" 
2.6.3 :005 > bank.make_withdrawl(500)
 => "Withdrawl of $500 was successful" 
2.6.3 :006 > bank.print_statement
date || credit || debit || balance
25/02/2020 || || 500.00 || 2500.00
25/02/2020 || 2000.00 || || 3000.00
25/02/2020 || 1000.00 || || 1000.00
```

## Running the tests

To run tests for this program, run:

```
$ rspec
```

## Built With

* Ruby
* Rspec (testing)

### User Stories

```
As a bank customer,
So I can keep my money at the bank,
I would like to make deposits.
```

```
As a bank customer,
So I can spend my money,
I would like to make withdrawls.
```

```
As a bank customer,
So I can see how much money I have at the bank,
I would like to print my bank statement.
```

```
As a bank customer,
So I can see all of my transaction details,
I would like my bank statement to include the date of each transaction.
```

```
As a bank customer,
So I can see all of my transaction details,
I would like my bank statement to include the credit/debit amount of each transaction.
```

```
As a bank customer,
So I can see all of my transaction details,
I would like my bank statement to include the balance after each transaction.
```

## Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

