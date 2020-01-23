class AddCreatorIdToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :creator_id, :reference
    add_index :events, :creator_id
  end
end
