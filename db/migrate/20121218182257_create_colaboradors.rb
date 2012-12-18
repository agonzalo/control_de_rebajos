class CreateColaboradors < ActiveRecord::Migration
  def change
    create_table :colaboradors do |t|
      t.String :nombre
      t.float :salario_por_hora
      t.integer :horas_por_quincena
      t.String :codigo
      t.String :cedula
      t.date :fecha_de_ingreso
      t.date :fecha_de_nacimiento
      t.references :concepto

      t.timestamps
    end
    add_index :colaboradors, :concepto_id
  end
end
