# Encoding: utf-8

require "bank_account"

describe BankAccount do
  let(:account) { BankAccount.new("John Lennon", "FR14-2004-1010-0505-0001-3M02-606", 200, "yoko") }

  describe 'Getters' do
    it 'has a way to access the account name' do
      expect(account.name).to eq 'Bruce Lee'
    end

    it 'has a way to access the account balance' do
      expect(account.balance).to be_a Fixnum
    end
  end

  describe '#add_transaction (private)' do
    it 'add transactions to your account' do
      account.send(:add_transaction, 200)
      expect(account.instance_variable_get(:@transactions).length).to eq 2
    end

    it 'update its balance when a new transaction is made' do
      account.send(:add_transaction, -100)
      expect(account.balance).to eq 100
    end
  end


  describe '#to_s' do
    it 'returns a string' do
      expect(account.to_s).to be_a String
    end

    it 'returns data about the account' do
      expect(account.to_s).to match /#{account.name}/
    end

    it 'returns hidden iban' do
      expect(account.to_s).to match /FR14\*+606/
    end
  end

  describe '#withdraw' do
    it 'changes the accounts balance' do
      account.withdraw(50)
      expect(account.balance).to eq 150
    end

    it 'returns a message containing the withdrawn amount' do
      account.withdraw(150).match /150/
    end
  end

  describe '#deposit' do
    it 'changes the accounts balance' do
      account.deposit(200)
      expect(account.balance).to eq 400
    end

    it 'returns a message containing the deposit amount' do
      expect(account.deposit(150)).to match /150/
    end
  end

  describe '#transactions_history' do
    it 'verifies the given password' do
      expect(account.transactions_history(password: 'sdofijdsi')).to eq 'wrong password'
    end

    it 'is not happy if you do not give it any password' do
      expect(account.transactions_history()).to eq 'no password given'
    end

    it 'displays all your transactions if given the correct password' do
      account.instance_variable_set(:@transactions, [300])
      expect(account.transactions_history(password: 'brucelit')).to match /300/
    end
  end
end
