class AddMealRestrictionToUser < ActiveRecord::Migration
  def change
    add_column :users, :meal_restriction, :string
  end
end
