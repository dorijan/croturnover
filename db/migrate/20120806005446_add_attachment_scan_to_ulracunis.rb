class AddAttachmentScanToUlracunis < ActiveRecord::Migration
  def self.up
    change_table :ulracunis do |t|
      t.has_attached_file :scan
    end
  end

  def self.down
    drop_attached_file :ulracunis, :scan
  end
end
