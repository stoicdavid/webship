ActiveAdmin.register AdminUser do
  menu :priority => 2
  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  controller do
    def permitted_params
      params.permit admin_user: [:email, :password, :password_confirmation]
    end
  end
  show do
      attributes_table do
        row :email
        row :authentication_token
        row :confirmed_at
        row :current_sign_in_at
        row :last_sign_in_at
        row :sign_in_count
      end
      active_admin_comments
    end
  
end
