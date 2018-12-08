class AddTextToRecommends < ActiveRecord::Migration[5.1]
  def change
    add_column :recommends, :text, :text
  end
end
