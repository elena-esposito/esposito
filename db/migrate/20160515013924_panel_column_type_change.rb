class PanelColumnTypeChange < ActiveRecord::Migration
  def change
    change_column :panels, :description, :text
  end
end
