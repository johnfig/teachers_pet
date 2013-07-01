class Teacher < ActiveRecord::Base
  attr_accessible :name, :student_ids

  has_and_belongs_to_many :students

  accepts_nested_attributes_for :students
end
