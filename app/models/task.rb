class Task < ActiveRecord::Base
  belongs_to :reporter, :class_name=>'User'
  belongs_to :assign_to, :class_name=>'User'
  belongs_to :project
  belongs_to :sprint

  validates :project, presence: true
  validates :title, presence: true
  validates :kind,presence: true
  validates :priority,presence: true

  def estimation

  end

  def estimation=

  end

  def time_spent

  end

  def time_spent=

  end

  def to_param
    "#{kind}#{super.to_param}" unless super.to_param.nil?
  end
end
