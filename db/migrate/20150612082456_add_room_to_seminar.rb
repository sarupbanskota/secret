class AddRoomToSeminar < ActiveRecord::Migration
  def change
    add_column :seminars, :room, :string
  end
end
