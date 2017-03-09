require 'bank_account'

describe BankAccount do

  subject(:account) {described_class.new}

  describe '#initialize' do
    it 'a new account initializes with balance of 0' do
      expect(account.balance).to eq 0
    end
    it 'a new account initializes with an empty list of transactions' do
      expect(account.transactions).to eq []
    end
  end

  describe '#deposit' do
    it 'allows the user to deposit money into the account' do
      account.deposit(50)
      expect(account.balance).to eq 50
    end
  end

  describe '#withdraw' do
    it 'allows the user to withdraw money from the account' do
      account.deposit(100)
      account.withdraw(40)
      expect(account.balance).to eq 60
    end
  end



end
