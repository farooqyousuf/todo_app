class Task < ActiveRecord::Base
  attr_accessible :details, :name, :priority, :status
  
end
