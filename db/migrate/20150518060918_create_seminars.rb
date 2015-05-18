class CreateSeminars < ActiveRecord::Migration
  def change
    create_table :seminars do |t|
      t.belongs_to :user, index: true
      t.string :headline
      t.string :subline
      t.text :description
      t.string :duration
      t.string :slot
      t.string :confirmed
      t.string :category
      t.string :accepted
      t.string :confirmed
      t.string :track
      t.string :date

      t.timestamps
    end
  end
end
