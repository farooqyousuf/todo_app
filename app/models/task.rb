class Task < ActiveRecord::Base
  attr_accessible :details, :name, :priority, :status
  validates :details, :name, :priority, :status, :presence => true
  
  PRIORITY_TYPES = [
    [ "High" ],
    [ "Medium" ],
    [ "Low" ]
    ]
    
  STATUS_TYPES = [
    ["Pending"],
    ["Complete"]
    ]
  
end
