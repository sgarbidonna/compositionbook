class CreateAuxes < ActiveRecord::Migration[6.1]
  def change
    create_table :auxes do |t|
      t.string :hola

      t.timestamps
    end
  end
end
