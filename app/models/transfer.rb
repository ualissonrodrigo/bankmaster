class Transfer < ApplicationRecord
  belongs_to :account, dependent: :destroy
  has_many :balances

  validates :amount, :numericality => { :greater_than_or_equal_to => 1 }, presence: true
  validates :account_to, numericality: true, presence: true
end
