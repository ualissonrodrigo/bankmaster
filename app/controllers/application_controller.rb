class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    
    def normalize_money(x)
        ('%.2f' % x.to_s.gsub(/\D/, '')).to_f / 100
    end
end
