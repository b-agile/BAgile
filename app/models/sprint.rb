class Sprint < ActiveRecord::Base
  belongs_to :project

  has_many :tasks


  def to_s
    "#{version} #{name}"
  end
end
