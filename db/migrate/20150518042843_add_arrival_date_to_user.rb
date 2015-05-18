class AddArrivalDateToUser < ActiveRecord::Migration
  def change
    add_column :users, :arrival_date, :string
  end
end
