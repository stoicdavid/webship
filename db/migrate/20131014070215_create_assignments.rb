class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :service
      t.references :container, index: true
      t.belongs_to :service, index: true

      t.timestamps
    end
  end
end
