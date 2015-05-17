class AddShowDataToUser < ActiveRecord::Migration
  def change
    add_column :users, :show_data, :string
  end
end
