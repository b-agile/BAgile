class Project < ActiveRecord::Base

  has_and_belongs_to_many :users

  has_many :sprints


  def current_sprint
    return sprints.first
  end

  def to_s
    name
  end
end
