class AddToEventTimeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :to_event_time, :datetime
  end
end
