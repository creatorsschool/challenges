require_relative "transaction_solution"

# This is how you define your own custom exception classes
class DepositError < StandardError
end

class BankAccount
  # Contract for the BankAccount class
  # - you can access full owner's name and position, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account infos
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the position variable)

  attr_reader :name, :position

  MIN_DEPOSIT =  100

  def initialize(name, iban, initial_deposit, password)
    fail DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = []
    @position = 0
    @name, @iban = name, iban

    add_transaction(initial_deposit)
  end

  def withdraw(amount = 20)
    if @position >= amount
      add_transaction(-amount)
      "Total balance is #{@position}"
    else
      "Insufficient funds"
    end
  end

  def deposit(amount)
    add_transaction(amount)
    "You deposited #{amount}"
  end

  def transactions_history(args = {})
    if args[:password] == nil
      "no password given"
    elsif args[:password] != @password
      "wrong password"
    else
      @transactions.join("\n")
    end
  end

  def iban
    @iban[0..3] + "*" * 26 + @iban[-3..-1]
  end

  def to_s
    "Owner: #{@name}\nIBAN: #{iban}\nPosition: #{@position}"
  end

  private

  def add_transaction(amount)
    @transactions << Transaction.new(amount)
    @position += amount
  end
end
