class AddAttachmentAvatarToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :posts, :avatar
  end
end
