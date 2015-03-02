class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :publication
      t.text :title
      t.text :author
      t.text :date
      t.text :content
      t.text :url
      t.text :topic

      t.timestamps null: false
    end
  end
end
