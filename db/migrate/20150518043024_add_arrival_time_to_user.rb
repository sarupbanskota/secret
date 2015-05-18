class AddArrivalTimeToUser < ActiveRecord::Migration
  def change
    add_column :users, :arrival_time, :string
  end
end
