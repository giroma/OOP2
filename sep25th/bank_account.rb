class BankAccount
  @@interest_rate = 1.01
  @@accounts = []

  def initialize
    @balance = 0
  end
  #  CLASS METHODS
  def self.create
  new_account = BankAccount.new
  @@accounts << new_account
  return new_account
  end
  def self.total_funds
    sum = 0
    @@accounts.each do |object|
      sum += object.balance
    end
    return sum
  end
  def self.interest_time
    index = 0
    @@accounts.each do |item|
      item.reasign_balance(item.balance * @@interest_rate)
      index += 1
    end
  end

  def balance
    @balance
  end
        # WRITERS
  def deposit(amount)
    @balance += amount
  end
  def withdraw(amount)
    @balance -= amount
  end
  def reasign_balance(value)
    @balance = value
  end


end

my_account = BankAccount.create
your_account = BankAccount.create
# puts my_account.inspect
puts my_account.balance # 0

puts BankAccount.total_funds # 0
my_account.deposit(200)
your_account.deposit(1000)
puts my_account.balance # 200
puts your_account.balance # 1000
puts BankAccount.total_funds # 1200
BankAccount.interest_time
puts my_account.balance # 202.0
puts your_account.balance # 1010.0
puts BankAccount.total_funds # 1212.0
my_account.withdraw(50)
puts my_account.balance # 152.0
puts BankAccount.total_funds # 1162.0
sdfsdf
