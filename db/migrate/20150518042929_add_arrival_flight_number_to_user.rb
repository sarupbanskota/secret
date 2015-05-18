class AddArrivalFlightNumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :arrival_flight_number, :string
  end
end
