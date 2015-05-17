class AddSponsoringNeededToUser < ActiveRecord::Migration
  def change
    add_column :users, :sponsoring_needed, :string
  end
end
