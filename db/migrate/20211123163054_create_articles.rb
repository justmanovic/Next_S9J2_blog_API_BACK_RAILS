class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.text :content
      t.string :title
      t.boolean :private
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
