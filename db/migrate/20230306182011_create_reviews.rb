class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :appointment, null: false, foreign_key:true
      t.string :title
      t.string :comment
      t.timestamps
    end
  end
end
