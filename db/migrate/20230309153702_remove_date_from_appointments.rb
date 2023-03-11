class RemoveDateFromAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :date, :integer
  end
end
