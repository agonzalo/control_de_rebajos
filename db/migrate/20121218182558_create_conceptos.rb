class CreateConceptos < ActiveRecord::Migration
  def change
    create_table :conceptos do |t|
      t.float :monto_total
      t.integer :frecuencia
      t.float :monto_actual
      t.references :colaborador
      t.references :rebajo

      t.timestamps
    end
    add_index :conceptos, :colaborador_id
    add_index :conceptos, :rebajo_id
  end
end
