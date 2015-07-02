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

  def withdraw(amount)
    if @position >= amount
      add_transaction(-amount)
      "You just withdrawn #{amount}"
    else
      "Insufficient funds"
    end
  end

  def deposit(amount)
    add_transaction(amount)
    "You just deposited #{amount}"
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
    @transactions << amount
    @position += amount
  end
end

account = BankAccount.new("Zamith", "FR14-2004-1010-0505-0001-3M02-606", 200, "passwd")
account.withdraw(100)
account.deposit(50)
# puts account.transactions_history({ :password => "passwd" })
