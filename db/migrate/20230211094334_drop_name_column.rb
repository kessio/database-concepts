class DropNameColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :click_timelines, :name
  end
end
