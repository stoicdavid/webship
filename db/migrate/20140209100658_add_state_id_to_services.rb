class AddStateIdToServices < ActiveRecord::Migration
  def change
    add_column :services, :state_id, :integer
  end
end
