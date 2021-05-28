class WellcomeController < ApplicationController
  def index
    @balances = current_user.account.get_balance
  end
end
