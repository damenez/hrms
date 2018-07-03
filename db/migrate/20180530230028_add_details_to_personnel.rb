class AddDetailsToPersonnel < ActiveRecord::Migration[5.1]
  def change
    add_column :personnels, :salary, :integer
  end
end
