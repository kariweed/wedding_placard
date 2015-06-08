class AddAttachmentAvatarToPlacards < ActiveRecord::Migration
  def self.up
    change_table :placards do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :placards, :avatar
  end
end
