class RemoveDummyFromPersonnel < ActiveRecord::Migration[5.1]
  def change
    remove_column :personnels, :dummy, :string
  end
end
