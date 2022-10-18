class ArticleAddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :user_id, :integer
    add_foreign_key :articles, :users
    
  end
end
