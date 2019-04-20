class Captain < ActiveRecord::Base
  has_many :boats
  
  def self.catamaran_operators 
    self.joins(boats: :classifications).where(classifications: {name: "Catamaran"})
  end 
  
  def self.sailors 
    self.joins(boats: :classifications).where(classifications: {name: "Sailboat"}).distinct
  end 
  
  def self.motorboats 
    self.joins(boats: :classifications).where(classifications: {name: "Motorboat"}).distinct
  end 
  
  def self.talented_seafarers 
    self.where("IN, ?")
  end
end
