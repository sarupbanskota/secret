class ChangeDurationTypeInSeminar < ActiveRecord::Migration
  def self.up
    change_column :seminars, :duration, :integer
  end
 
  def self.down
    change_column :seminars, :duration, :string
  end

end
