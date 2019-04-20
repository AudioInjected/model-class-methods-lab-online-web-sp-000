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
    self.joins(boats: :classifications).where(classifications: ["Motorboat", "Sailboat"])

  end
end
