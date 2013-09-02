class User < ActiveRecord::Base
  attr_accessible :login, :password_hash, :password_salt, :token
end
