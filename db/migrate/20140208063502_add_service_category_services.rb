class AddServiceCategoryServices < ActiveRecord::Migration
  def change
    add_column :services, :service_type, :integer
  end
end
