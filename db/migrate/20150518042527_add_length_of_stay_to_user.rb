class AddLengthOfStayToUser < ActiveRecord::Migration
  def change
    add_column :users, :length_of_stay, :string
  end
end
