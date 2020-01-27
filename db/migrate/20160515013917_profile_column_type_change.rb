class ProfileColumnTypeChange < ActiveRecord::Migration
  def change
    change_column :profiles, :biography, :text
  end
end
