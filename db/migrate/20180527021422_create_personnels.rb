class CreatePersonnels < ActiveRecord::Migration[5.1]
  def change
    create_table :personnels do |t|
      t.string :name
      t.string :pos_code
      t.integer :age
      t.text :about

      t.timestamps
    end
  end
end
