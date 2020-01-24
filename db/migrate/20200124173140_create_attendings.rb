class CreateAttendings < ActiveRecord::Migration[6.0]
  def change
    create_table :attendings do |t|
      t.references :attend_event, references: :events, index: true
      t.references :attendee, references: :users, index:true
      
      t.timestamps
    end
  end
end
