class AddSponsorshipAmountToUser < ActiveRecord::Migration
  def change
    add_column :users, :sponsorship_amount, :string
  end
end
