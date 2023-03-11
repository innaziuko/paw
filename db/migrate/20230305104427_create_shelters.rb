class CreateShelters < ActiveRecord::Migration[7.0]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :phone_number

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
