class RemoveLineFromRazors < ActiveRecord::Migration
  def up
    remove_column :report_razors, :line
  end

  def down
    add_column :report_razors, :line, :integer
  end
end
