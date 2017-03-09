class BankAccount
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    record_transaction("credit", amount)
  end

  def withdraw(amount)
    @balance -= amount if amount < @balance
    record_transaction("debit", amount)
  end

  private

  def record_transaction(type, amount)
    transactiontime = Time.now
    @transactions << [transactiontime, type, amount]
  end

end
