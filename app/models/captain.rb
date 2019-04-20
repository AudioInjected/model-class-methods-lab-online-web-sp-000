class Captain < ActiveRecord::Base
  has_many :boats
  
  def self.catamaran_operators 
    self.joins(boats: :classifications).where(classifications: {name: "Catamaran"})
  end 
  
  def self.sailors 
    self.joins(boats: :classifications).where(classifications: {name: "Sailboat"}).distinct
  end 
  
  def self.talented_seafarers 
    binding.pry
    self.joins(boats: :classifications).where(classifications: [las])
    # self.joins(boats: :classifications).where(classifications: [{name: "Sailboat" & "Motorboat"})
    # self.joins(boats: :classifications).where(classifications: {name: "Sailboat"}).where(classifications: {name: "Motorboat"}).distinct
  end
end
