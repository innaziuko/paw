class AddColumnsToPet < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :id_shelter, :integer
  end
end
