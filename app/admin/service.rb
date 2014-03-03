ActiveAdmin.register Service do
  
  index do
    column :departure_date
    column :arrival_date
    column :release_date
    column :completed
    column :service_type
    column :status
    column :modality        
    default_actions
  end
  

end
