class Attachment < ActiveRecord::Base
  attr_accessible :name, :note, :path
end
