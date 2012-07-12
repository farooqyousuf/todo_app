class Task < ActiveRecord::Base
  attr_accessible :details, :name, :priority, :status
  
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
