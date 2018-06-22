class CreateProductReviews < ActiveRecord::Migration
  def change
    create_table :product_reviews do |t|
      t.integer :product_id
      t.integer :user_id
      t.string :description
      t.integer :rating

      t.timestamps null: false
    end
  end
end
