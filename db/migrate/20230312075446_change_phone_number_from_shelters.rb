class ChangePhoneNumberFromShelters < ActiveRecord::Migration[7.0]
  def change
    change_column :shelters, :phone_number, :string
  end
end
