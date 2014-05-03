class ReportRazor < ActiveRecord::Base
  belongs_to :report

  serialize :tags, Array

  attr_readonly :report_id
  attr_accessible :source, :level, :tags, :time, :duration, :stdout, :stderr, :file
end
