class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :text

      t.references :user
      t.references :book

      t.timestamps
    end
  end
end
