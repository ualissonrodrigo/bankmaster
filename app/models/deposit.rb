class Deposit < ApplicationRecord
  belongs_to :account, dependent: :destroy
	has_many :balances
  after_save :increment_balance

  def increment_balance
    last_balance = self.account.get_balance
    increment = self.amount.to_f
    new_balance = last_balance + increment
    balance = self.balances.create(
      account_id: self.account.id,
      amount: new_balance
    )
  end
end
