class Deposit < ApplicationRecord
  belongs_to :account, dependent: :destroy
	has_many :balances
  after_save :increment_balance

  def increment_balance
    BankOperations.increment(self.id, self.class.name, self.amount)
  end
end
