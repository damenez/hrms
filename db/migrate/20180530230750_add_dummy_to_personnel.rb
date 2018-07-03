class AddDummyToPersonnel < ActiveRecord::Migration[5.1]
  def change
    add_column :personnels, :dummy, :string
  end
end
