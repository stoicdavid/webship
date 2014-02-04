module TokenAuthenticatable
  extend ActiveSupport::Concern

  module ClassMethods
    def find_by_authentication_token(authentication_token = nil)
      if authentication_token
        where(authentication_token: authentication_token).first
      end
    end
  end

  def ensure_authentication_token
    if authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end

  def reset_authentication_token!
    self.authentication_token = generate_authentication_token
    save
  end

  def params_auth_hash
    return_params = if params[scope].kind_of?(Hash) && params[scope].has_key?(authentication_keys.first)
      params[scope]
    else
      params
    end
    token = ActionController::HttpAuthentication::Token.token_and_options(request)
    return_params.merge!(:auth_token => token[0]) if token
    return_params
  end

  private

  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.where(authentication_token: token).first
    end
  end
end