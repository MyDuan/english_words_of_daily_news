class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :title
      t.integer :release_year
      t.integer :release_month
      t.integer :release_day
      t.text :unlocking_word
      t.text :meaning
      t.text :example
      t.text :article_url
      t.text :category

      t.timestamps
    end
  end
end
