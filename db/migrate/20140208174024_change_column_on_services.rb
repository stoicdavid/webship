class ChangeColumnOnServices < ActiveRecord::Migration
  def change
    remove_column :services, :status
    add_column :services, :status, :string
  end
end
