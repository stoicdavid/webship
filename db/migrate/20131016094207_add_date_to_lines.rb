class AddDateToLines < ActiveRecord::Migration
  def change
    add_column :lines, :f_alta, :date
    add_column :lines, :f_baja, :date
  end
end
