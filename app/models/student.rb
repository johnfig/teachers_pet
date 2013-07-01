class Student < ActiveRecord::Base
  attr_accessible :grade, :name, :teacher_ids

  has_and_belongs_to_many :teachers

  accepts_nested_attributes_for :teachers
end
