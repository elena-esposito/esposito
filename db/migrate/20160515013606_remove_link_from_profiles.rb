class RemoveLinkFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :link
  end
end
