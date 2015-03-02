class CreateEditors < ActiveRecord::Migration
  def change
    create_table :editors do |t|
      t.text :name
      t.text :location
      t.text :password_digest
      t.text :username
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
