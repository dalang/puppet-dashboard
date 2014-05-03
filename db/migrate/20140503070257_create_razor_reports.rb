class CreateRazorReports < ActiveRecord::Migration
  def change
    postgres = ActiveRecord::Base.connection.adapter_name.downcase =~ /postgres/

    create_table "report_razors", :force => true do |t|
      t.integer  "report_id",                :null => false
      t.string   "level"
      t.text     "stdout",   :limit => 255			unless postgres
      t.text     "stdout"					if postgres
      t.text     "stderr",   :limit => 255			unless postgres
      t.text     "stderr"					if postgres
      t.text     "source",    :limit => 255			unless postgres
      t.text     "source"						if postgres
      t.text     "tags",      :limit => 255			unless postgres
      t.text     "tags"						if postgres
      t.datetime "time"
      t.integer  "duration",                :null => false
      t.text     "file",      :limit => 255			unless postgres
      t.text     "file"						if postgres
      t.integer  "line"
    end

    add_index "report_razors", ["report_id"], :name => "index_report_razors_on_report_id"
  end
end
