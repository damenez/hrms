class CreateDependents < ActiveRecord::Migration[5.1]
  def change
    create_table :dependents do |t|
      t.string :name
      t.string :relationship
      t.integer :age

      t.timestamps
    end
  end
end
