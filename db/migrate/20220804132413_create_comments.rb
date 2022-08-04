class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :blog_id
      t.integer :author_id

      t.timestamps
    end
  end
end
