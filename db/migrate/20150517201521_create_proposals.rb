class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :headline
      t.string :subline
      t.text :description
      t.string :class
      t.string :duration
      t.string :accepted
      t.string :date
      t.string :track
      t.string :slot
      t.string :confirmed

      t.timestamps
    end
  end
end
