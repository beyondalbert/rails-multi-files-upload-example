class AddInitialUsers < ActiveRecord::Migration
  def up
		User.create(login: 'admin', password_hash: '$2a$10$so94Y06nVZHoS1wwwE/yZuED/ZAy.3paL3.khc6/i8riB6uDc5I7G', password_salt: '$2a$10$so94Y06nVZHoS1wwwE/yZu', token: '863eb28da15ec4be889f66af5ae17c16')
  end

  def down
		User.delete_all
  end
end
