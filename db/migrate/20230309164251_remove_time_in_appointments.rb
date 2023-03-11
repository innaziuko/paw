class RemoveTimeInAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :time, :integer
  end
end
