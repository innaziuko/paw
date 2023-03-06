class AddStatusToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :status, :string, default: "not adopted"
  end
end
