class ChangeLengthOfStayTypeInUser < ActiveRecord::Migration
  def self.up
    change_column :users, :length_of_stay, :integer
  end
 
  def self.down
    change_column :users, :length_of_stay, :string
  end
end
