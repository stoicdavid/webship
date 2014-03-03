class AdminMailer < ActionMailer::Base
  default to: Proc.new { AdminUser.pluck(:email) },
            from: 'admin@control-logistico.com'
 
    def new_registration_for_approval(user)
      @user = user
      mail(subject: "Un nuevo usuario se registro: #{@user.email}")
    end
  
end
