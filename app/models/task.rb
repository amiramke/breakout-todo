class Task < ActiveRecord::Base
  belongs_to :todo_list
  attr_accessible :content
end
