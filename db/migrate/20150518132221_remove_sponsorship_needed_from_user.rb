class RemoveSponsorshipNeededFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :sponsorship_needed, :string
  end
end
