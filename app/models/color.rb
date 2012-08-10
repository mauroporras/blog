class Color < ActiveRecord::Base
  attr_accessible :codigo, :nombre

  validates :codigo, :presence => true, :uniqueness => true, :length => {:minimum => 4}
  validates :nombre, :presence => true
end
