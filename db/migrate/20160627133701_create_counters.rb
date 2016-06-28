class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.string :first_name
      t.string :last_name
      t.integer :counter
    end
  end
end
