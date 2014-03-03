ActiveAdmin.register User do
  menu :priority => 3
  
  index do
    column :email
    column :name
    column :last_name1
    column :last_name2
    column :approved     
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end
  
  

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  permit_params do
    permitted = [:email,:name,:last_name1,:last_name2,:approved,:role_ids]
  #  permitted << :other if resource.something?
  #  permitted
  end
  
  
  
  
end
