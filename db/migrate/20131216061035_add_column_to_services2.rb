class AddColumnToServices2 < ActiveRecord::Migration
  def change
    add_column :services, :user_id, :integer
    add_column :services, :completed, :boolean
  end
end
