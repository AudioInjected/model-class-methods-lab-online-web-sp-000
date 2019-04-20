class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications
  
  self.my_all 
    self.all.distinct
  end 
end
