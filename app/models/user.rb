class User < ActiveRecord::Base
  include TokenAuthenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :timeoutable
  
  before_save :ensure_authentication_token         
  has_many :services  
  
  
  def skip_confirmation!
    self.confirmed_at = Time.now
  end
end
