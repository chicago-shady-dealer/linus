# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  idea_id    :integer
#  writer_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  issue_id   :integer
#

class Assignment < ActiveRecord::Base
  resourcify
  belongs_to :idea
  has_many :submissions
  belongs_to :issue
  belongs_to :writer
  attr_accessible :issue_id, :idea_id, :writer_id
end
