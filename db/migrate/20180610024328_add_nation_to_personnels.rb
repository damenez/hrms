class AddNationToPersonnels < ActiveRecord::Migration[5.2]
  def change
    add_column :personnels, :nationality, :string
  end
end
