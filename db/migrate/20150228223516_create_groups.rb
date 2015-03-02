class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.text :title
      t.text :content
      t.integer :editor_id
      t.integer :articles, array: true, default: []
      t.text :topic

      t.timestamps null: false
    end
  end
end
