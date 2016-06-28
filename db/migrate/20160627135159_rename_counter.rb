class RenameCounter < ActiveRecord::Migration
  def change

    rename_column :counters, :counter, :count
  end
end
