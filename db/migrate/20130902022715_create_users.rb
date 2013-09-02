class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.text :password_hash
      t.text :password_salt
      t.string :token

      t.timestamps
    end
  end
end
