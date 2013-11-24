#encoding=UTF-8

module FinanceStarUsers
  module SessionsHelper





    def sign_in(user)
      session[:user_id] = user.id
    end

    def signed_in?
      !current_user.nil?
    end

    def sign_out
      session[:user_id] = nil
    end

    def current_user
      if session[:user_id].nil?
        return nil
      else
        User.find(session[:user_id])
      end
    end

    def current_user_id
      session[:user_id] || nil
    end

    def is_admin?
      signed_in? && current_user.admin
    end







  end
end
