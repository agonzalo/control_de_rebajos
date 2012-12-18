class CreateRebajos < ActiveRecord::Migration
  def change
    create_table :rebajos do |t|
      t.date :fecha
      t.float :monto
      t.references :concepto

      t.timestamps
    end
    add_index :rebajos, :concepto_id
  end
end
