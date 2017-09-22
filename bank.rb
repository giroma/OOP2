class BankAccount
  def initialize
    @balance = 0
  end
  # READERS
  def balance
    @balance
  end
  def interest_rate
    @interest_rate
  end

  # WRITERS
  def deposit=(amount)
    @balance += amount
  end
  def withdraw=(amount)
    @balance -= amount
  end
  def interest
    @balance *= 1.1
  end
end

account1 = BankAccount.new

account1.deposit = 534

puts account1.balance

account1.withdraw = 100

puts account1.balance

account1.interest

puts account1.balance
