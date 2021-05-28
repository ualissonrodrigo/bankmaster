class Transfer < ApplicationRecord
  belongs_to :account, dependent: :destroy
	has_many :balances
end