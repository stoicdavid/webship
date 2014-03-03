class User < ActiveRecord::Base
  include TokenAuthenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :timeoutable
  
  before_save :ensure_authentication_token         
  after_create :send_admin_mail
  has_many :services  
  has_and_belongs_to_many :roles 
  
  def role?(role) 
    return !!self.roles.find_by_name(role.to_s)
  end
  
  
  def skip_confirmation!
    self.confirmed_at = Time.now
  end
  
  def active_for_authentication? 
      super && approved? 
  end 

  def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super # Use whatever other message 
    end 
  end
  

  def send_admin_mail
    AdminMailer.new_registration_for_approval(self).deliver
  end
  
  def self.send_reset_password_instructions(attributes={})
    recoverable = find_or_initialize_with_errors(reset_password_keys, attributes, :not_found)
    if !recoverable.approved?
      recoverable.errors[:base] << I18n.t("devise.failure.not_approved")
    elsif recoverable.persisted?
      recoverable.send_reset_password_instructions
    end
    recoverable
  end
  
end
