class Person < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :telephone, :on => :create, :message => "can't be blank"
end
