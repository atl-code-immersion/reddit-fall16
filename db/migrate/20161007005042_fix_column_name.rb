class FixColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :comments, :blog_post_id, :post_id
  end
end
