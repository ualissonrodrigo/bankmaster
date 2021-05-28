class Withdraw < ApplicationRecord
  belongs_to :account, dependent: :destroy
	has_many :balances
  after_save :decrement_balance

  def decrement_balance
    BankOperations.decrement(self.id, self.class.name, 0)
  end
end
