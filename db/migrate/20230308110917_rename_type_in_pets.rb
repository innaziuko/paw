class RenameTypeInPets < ActiveRecord::Migration[7.0]
  def change
    rename_column :pets, :type, :species
  end
end
