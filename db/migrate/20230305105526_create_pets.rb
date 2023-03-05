class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :type
      t.string :name
      t.string :breed
      t.string :gender
      t.string :description
      t.integer :age
      t.string :image

      t.timestamps
    end
  end
end
