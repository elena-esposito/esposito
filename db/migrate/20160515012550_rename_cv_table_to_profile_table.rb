class RenameCvTableToProfileTable < ActiveRecord::Migration
  def change
    rename_table :cvs, :profiles
  end
end
