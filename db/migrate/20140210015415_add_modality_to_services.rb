class AddModalityToServices < ActiveRecord::Migration
  def change
    add_column :services, :modality, :string
  end
end
