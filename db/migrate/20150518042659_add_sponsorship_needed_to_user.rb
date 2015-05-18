class AddSponsorshipNeededToUser < ActiveRecord::Migration
  def change
    add_column :users, :sponsorship_needed, :string
  end
end
