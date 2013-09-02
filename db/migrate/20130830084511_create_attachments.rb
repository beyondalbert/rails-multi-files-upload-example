class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :name
      t.string :path
      t.string :note

      t.timestamps
    end
  end
end
